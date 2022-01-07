
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TID_LIMIT (int ) ;
 int slave_clock_cache ;
 int slave_layer_cache ;
 int slave_nlock_cache ;
 int slave_slock_cache ;
 int soft_serial_target_init (int ,int ) ;
 int transactions ;

void transport_slave_init(void)
{
 soft_serial_target_init(transactions, TID_LIMIT(transactions));
 slave_layer_cache = 255;
 slave_nlock_cache = 255;
 slave_clock_cache = 255;
 slave_slock_cache = 255;
}
