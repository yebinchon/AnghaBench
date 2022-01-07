
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TID_LIMIT (int ) ;
 int soft_serial_initiator_init (int ,int ) ;
 int transactions ;

void transport_master_init(void)
{ soft_serial_initiator_init(transactions, TID_LIMIT(transactions)); }
