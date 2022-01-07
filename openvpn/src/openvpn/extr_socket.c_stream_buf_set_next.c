
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; scalar_t__ len; } ;
struct stream_buf {scalar_t__ len; scalar_t__ maxlen; TYPE_1__ next; TYPE_1__ buf; } ;


 int ASSERT (int) ;
 int D_STREAM_DEBUG ;
 int buf_safe (TYPE_1__*,scalar_t__) ;
 int dmsg (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
stream_buf_set_next(struct stream_buf *sb)
{

    sb->next = sb->buf;
    sb->next.offset = sb->buf.offset + sb->buf.len;
    sb->next.len = (sb->len >= 0 ? sb->len : sb->maxlen) - sb->buf.len;
    dmsg(D_STREAM_DEBUG, "STREAM: SET NEXT, buf=[%d,%d] next=[%d,%d] len=%d maxlen=%d",
         sb->buf.offset, sb->buf.len,
         sb->next.offset, sb->next.len,
         sb->len, sb->maxlen);
    ASSERT(sb->next.len > 0);
    ASSERT(buf_safe(&sb->buf, sb->next.len));
}
