
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {scalar_t__ len; } ;
struct stream_buf {int error; scalar_t__ maxlen; int port_share_state; int residual; struct buffer buf_init; } ;


 int D_STREAM_DEBUG ;
 int const PROTO_TCP_SERVER ;
 int PS_DISABLED ;
 int PS_ENABLED ;
 unsigned int const SF_PORT_SHARE ;
 int alloc_buf (scalar_t__) ;
 int dmsg (int ,char*,scalar_t__) ;
 int stream_buf_reset (struct stream_buf*) ;

__attribute__((used)) static void
stream_buf_init(struct stream_buf *sb,
                struct buffer *buf,
                const unsigned int sockflags,
                const int proto)
{
    sb->buf_init = *buf;
    sb->maxlen = sb->buf_init.len;
    sb->buf_init.len = 0;
    sb->residual = alloc_buf(sb->maxlen);
    sb->error = 0;





    stream_buf_reset(sb);

    dmsg(D_STREAM_DEBUG, "STREAM: INIT maxlen=%d", sb->maxlen);
}
