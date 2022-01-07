
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int len; } ;
struct stream_buf {struct buffer next; } ;


 int ASSERT (scalar_t__) ;
 int D_STREAM_DEBUG ;
 scalar_t__ buf_defined (struct buffer*) ;
 int dmsg (int ,char*,int) ;

__attribute__((used)) static inline void
stream_buf_get_next(struct stream_buf *sb, struct buffer *buf)
{
    dmsg(D_STREAM_DEBUG, "STREAM: GET NEXT len=%d",
         buf_defined(&sb->next) ? sb->next.len : -1);
    ASSERT(buf_defined(&sb->next));
    *buf = sb->next;
}
