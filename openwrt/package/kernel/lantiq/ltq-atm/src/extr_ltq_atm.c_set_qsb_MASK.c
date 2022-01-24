#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int taus; unsigned int ts; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
union qsb_queue_vbr_parameter_table {int /*<<< orphan*/  dword; TYPE_7__ bit; TYPE_2__ member_0; } ;
struct TYPE_14__ {unsigned int tp; unsigned int wfqf; int vbr; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
union qsb_queue_parameter_table {int /*<<< orphan*/  dword; TYPE_6__ bit; TYPE_1__ member_0; } ;
struct clk {int dummy; } ;
struct atm_vcc {int atm_options; } ;
struct TYPE_13__ {unsigned int max_pcr; int traffic_class; unsigned int min_pcr; unsigned int scr; int mbs; } ;
struct atm_qos {TYPE_5__ txtp; } ;
struct TYPE_16__ {TYPE_4__* port; TYPE_3__* conn; } ;
struct TYPE_12__ {int tx_max_cell_rate; } ;
struct TYPE_11__ {int port; } ;

/* Variables and functions */
 int ATM_ATMOPT_CLP ; 
#define  ATM_CBR 132 
#define  ATM_UBR 131 
#define  ATM_UBR_PLUS 130 
#define  ATM_VBR_NRT 129 
#define  ATM_VBR_RT 128 
 unsigned int FIRST_QSB_QID ; 
 unsigned int QSB_GCR_MIN ; 
 int /*<<< orphan*/  QSB_QPT_SET_MASK ; 
 int /*<<< orphan*/  QSB_QVPT_SET_MASK ; 
 int* QSB_RAMAC ; 
 int /*<<< orphan*/  QSB_RAMAC_LH_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSB_RAMAC_RW_WRITE ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  QSB_RAMAC_TSEL_QPT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSB_RAMAC_TSEL_VBR ; 
 int /*<<< orphan*/ * QSB_RTD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * QSB_RTM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int QSB_TAUS_MAX ; 
 unsigned int QSB_TP_TS_MAX ; 
 unsigned int QSB_WFQ_NONUBR_MAX ; 
 unsigned int QSB_WFQ_UBR_BYPASS ; 
 struct clk* FUNC6 () ; 
 unsigned int FUNC7 (struct clk*) ; 
 TYPE_8__ g_atm_priv_data ; 
 unsigned int qsb_tstep ; 

__attribute__((used)) static void FUNC8(struct atm_vcc *vcc, struct atm_qos *qos, unsigned int queue)
{
	struct clk *fpi_clk = FUNC6();
	unsigned int qsb_clk = FUNC7(fpi_clk);
	unsigned int qsb_qid = queue + FIRST_QSB_QID;
	union qsb_queue_parameter_table qsb_queue_parameter_table = {0};
	union qsb_queue_vbr_parameter_table qsb_queue_vbr_parameter_table = {0};
	unsigned int tmp;


	/*
	 *  Peak Cell Rate (PCR) Limiter
	 */
	if ( qos->txtp.max_pcr == 0 )
		qsb_queue_parameter_table.bit.tp = 0;   /*  disable PCR limiter */
	else {
		/*  peak cell rate would be slightly lower than requested [maximum_rate / pcr = (qsb_clock / 8) * (time_step / 4) / pcr] */
		tmp = ((qsb_clk * qsb_tstep) >> 5) / qos->txtp.max_pcr + 1;
		/*  check if overflow takes place   */
		qsb_queue_parameter_table.bit.tp = tmp > QSB_TP_TS_MAX ? QSB_TP_TS_MAX : tmp;
	}

#if !defined(DISABLE_QOS_WORKAROUND) || !DISABLE_QOS_WORKAROUND
	//  A funny issue. Create two PVCs, one UBR and one UBR with max_pcr.
	//  Send packets to these two PVCs at same time, it trigger strange behavior.
	//  In A1, RAM from 0x80000000 to 0x0x8007FFFF was corrupted with fixed pattern 0x00000000 0x40000000.
	//  In A4, PPE firmware keep emiting unknown cell and do not respond to driver.
	//  To work around, create UBR always with max_pcr.
	//  If user want to create UBR without max_pcr, we give a default one larger than line-rate.
	if ( qos->txtp.traffic_class == ATM_UBR && qsb_queue_parameter_table.bit.tp == 0 ) {
		int port = g_atm_priv_data.conn[queue].port;
		unsigned int max_pcr = g_atm_priv_data.port[port].tx_max_cell_rate + 1000;

		tmp = ((qsb_clk * qsb_tstep) >> 5) / max_pcr + 1;
		if ( tmp > QSB_TP_TS_MAX )
			tmp = QSB_TP_TS_MAX;
		else if ( tmp < 1 )
			tmp = 1;
		qsb_queue_parameter_table.bit.tp = tmp;
	}
#endif

	/*
	 *  Weighted Fair Queueing Factor (WFQF)
	 */
	switch ( qos->txtp.traffic_class ) {
	case ATM_CBR:
	case ATM_VBR_RT:
		/*  real time queue gets weighted fair queueing bypass  */
		qsb_queue_parameter_table.bit.wfqf = 0;
		break;
	case ATM_VBR_NRT:
	case ATM_UBR_PLUS:
		/*  WFQF calculation here is based on virtual cell rates, to reduce granularity for high rates  */
		/*  WFQF is maximum cell rate / garenteed cell rate                                             */
		/*  wfqf = qsb_minimum_cell_rate * QSB_WFQ_NONUBR_MAX / requested_minimum_peak_cell_rate        */
		if ( qos->txtp.min_pcr == 0 )
			qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_NONUBR_MAX;
		else {
			tmp = QSB_GCR_MIN * QSB_WFQ_NONUBR_MAX / qos->txtp.min_pcr;
			if ( tmp == 0 )
				qsb_queue_parameter_table.bit.wfqf = 1;
			else if ( tmp > QSB_WFQ_NONUBR_MAX )
				qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_NONUBR_MAX;
			else
				qsb_queue_parameter_table.bit.wfqf = tmp;
		}
		break;
	default:
	case ATM_UBR:
		qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_UBR_BYPASS;
	}

	/*
	 *  Sustained Cell Rate (SCR) Leaky Bucket Shaper VBR.0/VBR.1
	 */
	if ( qos->txtp.traffic_class == ATM_VBR_RT || qos->txtp.traffic_class == ATM_VBR_NRT ) {
#if 0
		if ( qos->txtp.scr == 0 ) {
#endif
			/*  disable shaper  */
			qsb_queue_vbr_parameter_table.bit.taus = 0;
			qsb_queue_vbr_parameter_table.bit.ts = 0;
#if 0
		} else {
			/*  Cell Loss Priority  (CLP)   */
			if ( (vcc->atm_options & ATM_ATMOPT_CLP) )
				/*  CLP1    */
				qsb_queue_parameter_table.bit.vbr = 1;
			else
				/*  CLP0    */
				qsb_queue_parameter_table.bit.vbr = 0;
			/*  Rate Shaper Parameter (TS) and Burst Tolerance Parameter for SCR (tauS) */
			tmp = ((qsb_clk * qsb_tstep) >> 5) / qos->txtp.scr + 1;
			qsb_queue_vbr_parameter_table.bit.ts = tmp > QSB_TP_TS_MAX ? QSB_TP_TS_MAX : tmp;
			tmp = (qos->txtp.mbs - 1) * (qsb_queue_vbr_parameter_table.bit.ts - qsb_queue_parameter_table.bit.tp) / 64;
			if ( tmp == 0 )
				qsb_queue_vbr_parameter_table.bit.taus = 1;
			else if ( tmp > QSB_TAUS_MAX )
				qsb_queue_vbr_parameter_table.bit.taus = QSB_TAUS_MAX;
			else
				qsb_queue_vbr_parameter_table.bit.taus = tmp;
		}
#endif
	} else {
		qsb_queue_vbr_parameter_table.bit.taus = 0;
		qsb_queue_vbr_parameter_table.bit.ts = 0;
	}

	/*  Queue Parameter Table (QPT) */
	*QSB_RTM   = FUNC5(QSB_QPT_SET_MASK);
	*QSB_RTD   = FUNC4(qsb_queue_parameter_table.dword);
	*QSB_RAMAC = FUNC1(QSB_RAMAC_RW_WRITE) | FUNC3(QSB_RAMAC_TSEL_QPT) | FUNC0(QSB_RAMAC_LH_LOW) | FUNC2(qsb_qid);
	/*  Queue VBR Paramter Table (QVPT) */
	*QSB_RTM   = FUNC5(QSB_QVPT_SET_MASK);
	*QSB_RTD   = FUNC4(qsb_queue_vbr_parameter_table.dword);
	*QSB_RAMAC = FUNC1(QSB_RAMAC_RW_WRITE) | FUNC3(QSB_RAMAC_TSEL_VBR) | FUNC0(QSB_RAMAC_LH_LOW) | FUNC2(qsb_qid);

}