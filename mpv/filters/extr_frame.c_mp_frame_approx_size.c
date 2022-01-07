
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {size_t type; int data; } ;
struct TYPE_2__ {int (* approx_size ) (int ) ;} ;


 TYPE_1__* frame_handlers ;
 int stub1 (int ) ;

int mp_frame_approx_size(struct mp_frame frame)
{
    if (frame_handlers[frame.type].approx_size)
        return frame_handlers[frame.type].approx_size(frame.data);
    return 0;
}
