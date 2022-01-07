
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {size_t type; int data; } ;
struct TYPE_2__ {double (* get_pts ) (int ) ;} ;


 double MP_NOPTS_VALUE ;
 TYPE_1__* frame_handlers ;
 double stub1 (int ) ;

double mp_frame_get_pts(struct mp_frame frame)
{
    if (frame_handlers[frame.type].get_pts)
        return frame_handlers[frame.type].get_pts(frame.data);
    return MP_NOPTS_VALUE;
}
