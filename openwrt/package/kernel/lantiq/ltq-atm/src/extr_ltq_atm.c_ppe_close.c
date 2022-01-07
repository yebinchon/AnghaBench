
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port {int tx_current_cell_rate; } ;
struct connection {size_t port; scalar_t__ aal5_vcc_oversize_sdu; scalar_t__ aal5_vcc_crc_err; int * vcc; } ;
struct TYPE_4__ {int traffic_class; int min_pcr; int scr; int max_pcr; } ;
struct TYPE_5__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; } ;
struct TYPE_6__ {scalar_t__ conn_table; struct port* port; struct connection* conn; } ;






 int PPE_MAILBOX_IGU1_INT ;
 int clear_bit (int,scalar_t__*) ;
 int clear_htu_entry (int) ;
 int disable_irq (int ) ;
 int find_vcc (struct atm_vcc*) ;
 TYPE_3__ g_atm_priv_data ;
 int g_dma_tasklet ;
 int pr_err (char*) ;
 int tasklet_unlock_wait (int *) ;

__attribute__((used)) static void ppe_close(struct atm_vcc *vcc)
{
 int conn;
 struct port *port;
 struct connection *connection;
 if ( vcc == ((void*)0) )
  return;


 conn = find_vcc(vcc);
 if ( conn < 0 ) {
  pr_err("can't find vcc\n");
  goto PPE_CLOSE_EXIT;
 }
 connection = &g_atm_priv_data.conn[conn];
 port = &g_atm_priv_data.port[connection->port];


 clear_htu_entry(conn);


 connection->vcc = ((void*)0);
 connection->aal5_vcc_crc_err = 0;
 connection->aal5_vcc_oversize_sdu = 0;
 clear_bit(conn, &g_atm_priv_data.conn_table);


 if ( g_atm_priv_data.conn_table == 0 )
  disable_irq(PPE_MAILBOX_IGU1_INT);


 switch ( vcc->qos.txtp.traffic_class )
 {
 case 131:
 case 128:
  port->tx_current_cell_rate -= vcc->qos.txtp.max_pcr;
  break;
 case 129:



  break;
 case 130:
  port->tx_current_cell_rate -= vcc->qos.txtp.min_pcr;
  break;
 }


 tasklet_unlock_wait(&g_dma_tasklet);

PPE_CLOSE_EXIT:
 return;
}
