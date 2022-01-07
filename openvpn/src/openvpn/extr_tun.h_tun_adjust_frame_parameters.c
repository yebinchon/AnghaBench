
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;


 int frame_add_to_extra_tun (struct frame*,int) ;

__attribute__((used)) static inline void
tun_adjust_frame_parameters(struct frame *frame, int size)
{
    frame_add_to_extra_tun(frame, size);
}
