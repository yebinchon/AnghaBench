
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {scalar_t__ extra_link; scalar_t__ extra_frame; scalar_t__ align_adjust; } ;



__attribute__((used)) static inline void
frame_align_to_extra_frame(struct frame *frame)
{
    frame->align_adjust = frame->extra_frame + frame->extra_link;
}
