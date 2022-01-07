
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {size_t type; int data; } ;
struct TYPE_2__ {int (* set_pts ) (int ,double) ;scalar_t__ get_pts; } ;


 TYPE_1__* frame_handlers ;
 int stub1 (int ,double) ;

void mp_frame_set_pts(struct mp_frame frame, double pts)
{
    if (frame_handlers[frame.type].get_pts)
        frame_handlers[frame.type].set_pts(frame.data, pts);
}
