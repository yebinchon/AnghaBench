#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct clk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {unsigned int tx_max_cell_rate; } ;

/* Variables and functions */
 int ATM_PORT_NUMBER ; 
 int /*<<< orphan*/ * QSB_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * QSB_ICDV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* QSB_RAMAC ; 
 int /*<<< orphan*/  QSB_RAMAC_LH_LOW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSB_RAMAC_RW_WRITE ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  QSB_RAMAC_TSEL_SCT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSB_RAMAC_TSEL_SPT ; 
 int /*<<< orphan*/ * QSB_RTD ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/ * QSB_RTM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * QSB_SBL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSB_SET_SCT_MASK ; 
 int /*<<< orphan*/  QSB_SET_SPT_MASK ; 
 unsigned int FUNC9 (unsigned int) ; 
 unsigned int FUNC10 (int) ; 
 unsigned int QSB_SPT_SBV_VALID ; 
 struct clk* FUNC11 () ; 
 unsigned int FUNC12 (struct clk*) ; 
 TYPE_2__ g_atm_priv_data ; 
 int /*<<< orphan*/  qsb_srvm ; 
 int /*<<< orphan*/  qsb_tau ; 
 int qsb_tstep ; 

__attribute__((used)) static void FUNC13(void)
{
	struct clk *fpi_clk = FUNC11();
	unsigned int qsb_clk = FUNC12(fpi_clk);
	int i;
	unsigned int tmp1, tmp2, tmp3;

	*QSB_ICDV = FUNC1(qsb_tau);
	*QSB_SBL  = FUNC8(qsb_srvm);
	*QSB_CFG  = FUNC0(qsb_tstep >> 1);

	/*
	 *  set SCT and SPT per port
	 */
	for ( i = 0; i < ATM_PORT_NUMBER; i++ ) {
		if ( g_atm_priv_data.port[i].tx_max_cell_rate != 0 ) {
			tmp1 = ((qsb_clk * qsb_tstep) >> 1) / g_atm_priv_data.port[i].tx_max_cell_rate;
			tmp2 = tmp1 >> 6;                   /*  integer value of Tsb    */
			tmp3 = (tmp1 & ((1 << 6) - 1)) + 1; /*  fractional part of Tsb  */
			/*  carry over to integer part (?)  */
			if ( tmp3 == (1 << 6) ) {
				tmp3 = 0;
				tmp2++;
			}
			if ( tmp2 == 0 )
				tmp2 = tmp3 = 1;
			/*  1. set mask                                 */
			/*  2. write value to data transfer register    */
			/*  3. start the tranfer                        */
			/*  SCT (FracRate)  */
			*QSB_RTM   = FUNC7(QSB_SET_SCT_MASK);
			*QSB_RTD   = FUNC6(tmp3);
			*QSB_RAMAC = FUNC3(QSB_RAMAC_RW_WRITE) |
					FUNC5(QSB_RAMAC_TSEL_SCT) |
					FUNC2(QSB_RAMAC_LH_LOW) |
					FUNC4(i & 0x01);
			/*  SPT (SBV + PN + IntRage)    */
			*QSB_RTM   = FUNC7(QSB_SET_SPT_MASK);
			*QSB_RTD   = FUNC6(QSB_SPT_SBV_VALID | FUNC10(i & 0x01) | FUNC9(tmp2));
			*QSB_RAMAC = FUNC3(QSB_RAMAC_RW_WRITE) |
				FUNC5(QSB_RAMAC_TSEL_SPT) |
				FUNC2(QSB_RAMAC_LH_LOW) |
				FUNC4(i & 0x01);
		}
	}
}