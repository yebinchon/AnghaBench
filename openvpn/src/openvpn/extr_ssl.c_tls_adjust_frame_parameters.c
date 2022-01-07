
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;


 int frame_add_to_extra_frame (struct frame*,int) ;

void
tls_adjust_frame_parameters(struct frame *frame)
{
    frame_add_to_extra_frame(frame, 1);
}
