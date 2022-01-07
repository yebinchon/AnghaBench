
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; } ;
struct stream_buf {struct buffer buf; } ;


 int ASSERT (scalar_t__) ;
 int D_STREAM_DEBUG ;
 scalar_t__ buf_defined (struct buffer*) ;
 int dmsg (int ,char*,int) ;

__attribute__((used)) static inline void
stream_buf_get_final(struct stream_buf *sb, struct buffer *buf)
{
    dmsg(D_STREAM_DEBUG, "STREAM: GET FINAL len=%d",
         buf_defined(&sb->buf) ? sb->buf.len : -1);
    ASSERT(buf_defined(&sb->buf));
    *buf = sb->buf;
}
