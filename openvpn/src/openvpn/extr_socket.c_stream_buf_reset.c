
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_buf {int residual_fully_formed; int len; int next; int buf_init; int buf; } ;


 int D_STREAM_DEBUG ;
 int buf_reset (int *) ;
 int dmsg (int ,char*) ;

__attribute__((used)) static inline void
stream_buf_reset(struct stream_buf *sb)
{
    dmsg(D_STREAM_DEBUG, "STREAM: RESET");
    sb->residual_fully_formed = 0;
    sb->buf = sb->buf_init;
    buf_reset(&sb->next);
    sb->len = -1;
}
