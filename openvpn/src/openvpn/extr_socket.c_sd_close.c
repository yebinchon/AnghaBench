
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_descriptor_t ;


 int SOCKET_UNDEFINED ;
 int openvpn_close_socket (int ) ;
 scalar_t__ socket_defined (int ) ;

void
sd_close(socket_descriptor_t *sd)
{
    if (sd && socket_defined(*sd))
    {
        openvpn_close_socket(*sd);
        *sd = SOCKET_UNDEFINED;
    }
}
