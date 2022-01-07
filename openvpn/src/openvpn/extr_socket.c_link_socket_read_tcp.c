
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ residual_fully_formed; } ;
struct link_socket {int stream_reset; TYPE_1__ stream_buf; int sd; int reads; } ;
struct buffer {int len; } ;


 int BLEN (struct buffer*) ;
 int BPTR (struct buffer*) ;
 int MSG_NOSIGNAL ;
 int recv (int ,int ,int ,int ) ;
 int socket_finalize (int ,int *,struct buffer*,int *) ;
 scalar_t__ stream_buf_added (TYPE_1__*,int) ;
 int stream_buf_get_final (TYPE_1__*,struct buffer*) ;
 int stream_buf_get_next (TYPE_1__*,struct buffer*) ;
 int stream_buf_reset (TYPE_1__*) ;

int
link_socket_read_tcp(struct link_socket *sock,
                     struct buffer *buf)
{
    int len = 0;

    if (!sock->stream_buf.residual_fully_formed)
    {



        struct buffer frag;
        stream_buf_get_next(&sock->stream_buf, &frag);
        len = recv(sock->sd, BPTR(&frag), BLEN(&frag), MSG_NOSIGNAL);


        if (!len)
        {
            sock->stream_reset = 1;
        }
        if (len <= 0)
        {
            return buf->len = len;
        }
    }

    if (sock->stream_buf.residual_fully_formed
        || stream_buf_added(&sock->stream_buf, len))
    {
        stream_buf_get_final(&sock->stream_buf, buf);
        stream_buf_reset(&sock->stream_buf);
        return buf->len;
    }
    else
    {
        return buf->len = 0;
    }
}
