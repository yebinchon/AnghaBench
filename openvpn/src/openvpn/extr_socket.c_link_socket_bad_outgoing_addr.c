
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_READ_WRITE ;
 int dmsg (int ,char*) ;

void
link_socket_bad_outgoing_addr(void)
{
    dmsg(D_READ_WRITE, "TCP/UDP: No outgoing address to send packet");
}
