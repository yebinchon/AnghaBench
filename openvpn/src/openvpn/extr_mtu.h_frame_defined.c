
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {scalar_t__ link_mtu; } ;



__attribute__((used)) static inline bool
frame_defined(const struct frame *frame)
{
    return frame->link_mtu > 0;
}
