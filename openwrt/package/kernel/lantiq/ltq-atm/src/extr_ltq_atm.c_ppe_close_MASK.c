#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct port {int /*<<< orphan*/  tx_current_cell_rate; } ;
struct connection {size_t port; scalar_t__ aal5_vcc_oversize_sdu; scalar_t__ aal5_vcc_crc_err; int /*<<< orphan*/ * vcc; } ;
struct TYPE_4__ {int traffic_class; int /*<<< orphan*/  min_pcr; int /*<<< orphan*/  scr; int /*<<< orphan*/  max_pcr; } ;
struct TYPE_5__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; } ;
struct TYPE_6__ {scalar_t__ conn_table; struct port* port; struct connection* conn; } ;

/* Variables and functions */
#define  ATM_CBR 131 
#define  ATM_UBR_PLUS 130 
#define  ATM_VBR_NRT 129 
#define  ATM_VBR_RT 128 
 int /*<<< orphan*/  PPE_MAILBOX_IGU1_INT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atm_vcc*) ; 
 TYPE_3__ g_atm_priv_data ; 
 int /*<<< orphan*/  g_dma_tasklet ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct atm_vcc *vcc)
{
	int conn;
	struct port *port;
	struct connection *connection;
	if ( vcc == NULL )
		return;

	/*  get connection id   */
	conn = FUNC3(vcc);
	if ( conn < 0 ) {
		FUNC4("can't find vcc\n");
		goto PPE_CLOSE_EXIT;
	}
	connection = &g_atm_priv_data.conn[conn];
	port = &g_atm_priv_data.port[connection->port];

	/*  clear htu   */
	FUNC1(conn);

	/*  release connection  */
	connection->vcc = NULL;
	connection->aal5_vcc_crc_err = 0;
	connection->aal5_vcc_oversize_sdu = 0;
	FUNC0(conn, &g_atm_priv_data.conn_table);

	/*  disable irq */
	if ( g_atm_priv_data.conn_table == 0 )
		FUNC2(PPE_MAILBOX_IGU1_INT);

	/*  release bandwidth   */
	switch ( vcc->qos.txtp.traffic_class )
	{
	case ATM_CBR:
	case ATM_VBR_RT:
		port->tx_current_cell_rate -= vcc->qos.txtp.max_pcr;
		break;
	case ATM_VBR_NRT:
#if 0
		port->tx_current_cell_rate -= vcc->qos.txtp.scr;
#endif
		break;
	case ATM_UBR_PLUS:
		port->tx_current_cell_rate -= vcc->qos.txtp.min_pcr;
		break;
	}

	/* wait for incoming packets to be processed by upper layers */
	FUNC5(&g_dma_tasklet);

PPE_CLOSE_EXIT:
	return;
}