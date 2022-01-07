
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socks_proxy_info {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socket_descriptor_t ;
typedef int buf ;


 int D_LINK_ERRORS ;
 int MSG_NOSIGNAL ;
 int M_ERRNO ;
 int SIGUSR1 ;
 int memcpy (char*,char const*,size_t) ;
 int msg (int,char*,...) ;
 int port_from_servname (char const*) ;
 int recv_socks_reply (int ,int *,int volatile*) ;
 scalar_t__ send (int ,char*,int,int ) ;
 int socks_handshake (struct socks_proxy_info*,int ,int volatile*) ;
 size_t strlen (char const*) ;

void
establish_socks_proxy_passthru(struct socks_proxy_info *p,
                               socket_descriptor_t sd,
                               const char *host,
                               const char *servname,
                               volatile int *signal_received)
{
    char buf[128];
    size_t len;

    if (!socks_handshake(p, sd, signal_received))
    {
        goto error;
    }


    buf[0] = '\x05';
    buf[1] = '\x01';
    buf[2] = '\x00';
    buf[3] = '\x03';

    len = strlen(host);
    len = (5 + len + 2 > sizeof(buf)) ? (sizeof(buf) - 5 - 2) : len;

    buf[4] = (char) len;
    memcpy(buf + 5, host, len);

    int port = port_from_servname(servname);
    if (port ==0)
    {
        msg(D_LINK_ERRORS, "establish_socks_proxy_passthrough: Cannot convert %s to port number", servname);
        goto error;
    }

    buf[5 + len] = (char) (port >> 8);
    buf[5 + len + 1] = (char) (port & 0xff);

    {
        const ssize_t size = send(sd, buf, 5 + len + 2, MSG_NOSIGNAL);
        if ((int)size != 5 + (int)len + 2)
        {
            msg(D_LINK_ERRORS | M_ERRNO, "establish_socks_proxy_passthru: TCP port write failed on send()");
            goto error;
        }
    }



    if (!recv_socks_reply(sd, ((void*)0), signal_received))
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
