
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;


 int ACK_SIZE (int) ;
 int frame_add_to_extra_frame (struct frame*,int ) ;

void
reliable_ack_adjust_frame_parameters(struct frame *frame, int max)
{
    frame_add_to_extra_frame(frame, ACK_SIZE(max));
}
