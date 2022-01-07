
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sa_family; } ;
struct TYPE_5__ {TYPE_3__ sa; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct link_socket_actual {TYPE_2__ dest; } ;
typedef int socklen_t ;
typedef int socket_descriptor_t ;


 int CLEAR (struct link_socket_actual) ;
 int D_LINK_ERRORS ;
 int M_ERRNO ;
 int M_WARN ;
 int SOCKET_UNDEFINED ;
 int accept (int,TYPE_3__*,int*) ;
 int af_addr_size (int ) ;
 int getpeername (int,TYPE_3__*,int*) ;
 int msg (int,char*,...) ;
 int openvpn_close_socket (int) ;
 int set_cloexec (int) ;
 int socket_defined (int) ;

socket_descriptor_t
socket_do_accept(socket_descriptor_t sd,
                 struct link_socket_actual *act,
                 const bool nowait)
{




    socklen_t remote_len_af = af_addr_size(act->dest.addr.sa.sa_family);
    socklen_t remote_len = sizeof(act->dest.addr);
    socket_descriptor_t new_sd = SOCKET_UNDEFINED;

    CLEAR(*act);
    if (nowait)
    {
        msg(M_WARN, "TCP: this OS does not provide the getpeername() function");
    }

    else
    {
        new_sd = accept(sd, &act->dest.addr.sa, &remote_len);
    }
    if (!socket_defined(new_sd))
    {
        msg(D_LINK_ERRORS | M_ERRNO, "TCP: accept(%d) failed", (int)sd);
    }

    else if (remote_len_af && remote_len != remote_len_af)
    {
        msg(D_LINK_ERRORS, "TCP: Received strange incoming connection with unknown address length=%d", remote_len);
        openvpn_close_socket(new_sd);
        new_sd = SOCKET_UNDEFINED;
    }
    else
    {


        set_cloexec(sd);
    }
    return new_sd;
}
