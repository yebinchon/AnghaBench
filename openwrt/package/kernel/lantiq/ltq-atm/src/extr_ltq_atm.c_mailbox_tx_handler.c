
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int conn_table; } ;


 int MAX_PVC_NUMBER ;
 int free_tx_ring (int) ;
 TYPE_1__ g_atm_priv_data ;

__attribute__((used)) static void mailbox_tx_handler(unsigned int queue_bitmap)
{
 int i;
 int bit;


 queue_bitmap &= g_atm_priv_data.conn_table;

 for ( i = 0, bit = 1; i < MAX_PVC_NUMBER; i++, bit <<= 1 ) {
  if (queue_bitmap & bit)
   free_tx_ring(i);
 }
}
