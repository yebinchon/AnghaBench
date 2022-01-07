
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer_size {scalar_t__ rcvbuf; scalar_t__ sndbuf; } ;


 int D_OSBUF ;
 int msg (int ,char*,int const,int,int const,int) ;
 int socket_get_rcvbuf (int) ;
 int socket_get_sndbuf (int) ;
 int socket_set_rcvbuf (int,scalar_t__) ;
 int socket_set_sndbuf (int,scalar_t__) ;

__attribute__((used)) static void
socket_set_buffers(int fd, const struct socket_buffer_size *sbs)
{
    if (sbs)
    {
        const int sndbuf_old = socket_get_sndbuf(fd);
        const int rcvbuf_old = socket_get_rcvbuf(fd);

        if (sbs->sndbuf)
        {
            socket_set_sndbuf(fd, sbs->sndbuf);
        }

        if (sbs->rcvbuf)
        {
            socket_set_rcvbuf(fd, sbs->rcvbuf);
        }

        msg(D_OSBUF, "Socket Buffers: R=[%d->%d] S=[%d->%d]",
            rcvbuf_old,
            socket_get_rcvbuf(fd),
            sndbuf_old,
            socket_get_sndbuf(fd));
    }
}
