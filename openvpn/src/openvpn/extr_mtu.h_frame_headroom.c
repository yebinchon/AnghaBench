
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {unsigned int const align_flags; int align_adjust; } ;


 int FRAME_HEADROOM_BASE (struct frame const*) ;
 int PAYLOAD_ALIGN ;

__attribute__((used)) static inline int
frame_headroom(const struct frame *f, const unsigned int flag_mask)
{
    const int offset = FRAME_HEADROOM_BASE(f);
    const int adjust = (flag_mask & f->align_flags) ? f->align_adjust : 0;
    const int delta = ((PAYLOAD_ALIGN << 24) - (offset + adjust)) & (PAYLOAD_ALIGN - 1);
    return offset + delta;
}
