
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socks_proxy_info {int dummy; } ;
struct openvpn_sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socket_descriptor_t ;


 int CLEAR (struct openvpn_sockaddr) ;
 int D_LINK_ERRORS ;
 int MSG_NOSIGNAL ;
 int M_ERRNO ;
 int SIGUSR1 ;
 int msg (int,char*) ;
 int recv_socks_reply (int ,struct openvpn_sockaddr*,int volatile*) ;
 int send (int ,char*,int,int ) ;
 int socks_handshake (struct socks_proxy_info*,int ,int volatile*) ;

void
establish_socks_proxy_udpassoc(struct socks_proxy_info *p,
                               socket_descriptor_t ctrl_sd,
                               socket_descriptor_t udp_sd,
                               struct openvpn_sockaddr *relay_addr,
                               volatile int *signal_received)
{
    if (!socks_handshake(p, ctrl_sd, signal_received))
    {
        goto error;
    }

    {



        const ssize_t size = send(ctrl_sd,
                                  "\x05\x03\x00\x01\x00\x00\x00\x00\x00\x00",
                                  10, MSG_NOSIGNAL);
        if (size != 10)
        {
            msg(D_LINK_ERRORS | M_ERRNO, "establish_socks_proxy_passthru: TCP port write failed on send()");
            goto error;
        }
    }


    CLEAR(*relay_addr);
    if (!recv_socks_reply(ctrl_sd, relay_addr, signal_received))
    {
        goto error;
    }

    return;

error:
    if (!*signal_received)
    {
        *signal_received = SIGUSR1;
    }
    return;
}
