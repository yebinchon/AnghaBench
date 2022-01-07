
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISO_PDU_DR ;
 int iso_send_msg (int ) ;
 int tcp_disconnect () ;

void
iso_disconnect(void)
{
 iso_send_msg(ISO_PDU_DR);
 tcp_disconnect();
}
