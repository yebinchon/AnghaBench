
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;
struct buffer {int len; } ;


 int ASSERT (int ) ;
 int BUF_SIZE (struct frame const*) ;
 int FRAME_HEADROOM_ADJ (struct frame const*,unsigned int const) ;
 int MAX_RW_SIZE_LINK (struct frame const*) ;
 int MAX_RW_SIZE_TUN (struct frame const*) ;
 struct buffer alloc_buf (int ) ;
 int buf_init (struct buffer*,int ) ;
 int buf_safe (struct buffer*,int ) ;

void
alloc_buf_sock_tun(struct buffer *buf,
                   const struct frame *frame,
                   const bool tuntap_buffer,
                   const unsigned int align_mask)
{

    *buf = alloc_buf(BUF_SIZE(frame));
    ASSERT(buf_init(buf, FRAME_HEADROOM_ADJ(frame, align_mask)));
    buf->len = tuntap_buffer ? MAX_RW_SIZE_TUN(frame) : MAX_RW_SIZE_LINK(frame);
    ASSERT(buf_safe(buf, 0));
}
