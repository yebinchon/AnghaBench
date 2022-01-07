
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct socks_proxy_info {scalar_t__* authfile; } ;
typedef int ssize_t ;
typedef scalar_t__ socket_descriptor_t ;
typedef int method_sel ;
typedef int fd_set ;


 int D_LINK_ERRORS ;
 int FD_ZERO (int *) ;
 int MSG_NOSIGNAL ;
 int M_ERRNO ;
 int get_signal (int volatile*) ;
 int msg (int,char*) ;
 int openvpn_fd_set (scalar_t__,int *) ;
 int recv (scalar_t__,char*,int,int ) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int send (scalar_t__,char*,int,int ) ;
 int socks_username_password_auth (struct socks_proxy_info*,scalar_t__,int volatile*) ;

__attribute__((used)) static bool
socks_handshake(struct socks_proxy_info *p,
                socket_descriptor_t sd,
                volatile int *signal_received)
{
    char buf[2];
    int len = 0;
    const int timeout_sec = 5;
    ssize_t size;


    char method_sel[3] = { 0x05, 0x01, 0x00 };
    if (p->authfile[0])
    {
        method_sel[2] = 0x02;

    }
    size = send(sd, method_sel, sizeof(method_sel), MSG_NOSIGNAL);
    if (size != sizeof(method_sel))
    {
        msg(D_LINK_ERRORS | M_ERRNO, "socks_handshake: TCP port write failed on send()");
        return 0;
    }

    while (len < 2)
    {
        int status;
        ssize_t size;
        fd_set reads;
        struct timeval tv;
        char c;

        FD_ZERO(&reads);
        openvpn_fd_set(sd, &reads);
        tv.tv_sec = timeout_sec;
        tv.tv_usec = 0;

        status = select(sd + 1, &reads, ((void*)0), ((void*)0), &tv);

        get_signal(signal_received);
        if (*signal_received)
        {
            return 0;
        }


        if (status == 0)
        {
            msg(D_LINK_ERRORS | M_ERRNO, "socks_handshake: TCP port read timeout expired");
            return 0;
        }


        if (status < 0)
        {
            msg(D_LINK_ERRORS | M_ERRNO, "socks_handshake: TCP port read failed on select()");
            return 0;
        }


        size = recv(sd, &c, 1, MSG_NOSIGNAL);


        if (size != 1)
        {
            msg(D_LINK_ERRORS | M_ERRNO, "socks_handshake: TCP port read failed on recv()");
            return 0;
        }


        buf[len++] = c;
    }


    if (buf[0] != '\x05')
    {
        msg(D_LINK_ERRORS, "socks_handshake: Socks proxy returned bad status");
        return 0;
    }


    if (buf[1] != method_sel[2])
    {
        msg(D_LINK_ERRORS, "socks_handshake: Socks proxy returned unexpected auth");
        return 0;
    }


    switch (buf[1])
    {
        case 0:
            break;

        case 2:
            if (!p->authfile[0])
            {
                msg(D_LINK_ERRORS, "socks_handshake: server asked for username/login auth but we were "
                    "not provided any credentials");
                return 0;
            }

            if (!socks_username_password_auth(p, sd, signal_received))
            {
                return 0;
            }

            break;

        default:
            msg(D_LINK_ERRORS, "socks_handshake: unknown SOCKS auth method");
            return 0;
    }

    return 1;
}
