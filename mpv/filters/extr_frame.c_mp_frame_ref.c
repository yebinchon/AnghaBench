
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {size_t type; int data; } ;
struct TYPE_2__ {int (* new_ref ) (int ) ;} ;


 size_t MP_FRAME_NONE ;
 int assert (int ) ;
 TYPE_1__* frame_handlers ;
 int stub1 (int ) ;

struct mp_frame mp_frame_ref(struct mp_frame frame)
{
    if (frame_handlers[frame.type].new_ref) {
        assert(frame.data);
        frame.data = frame_handlers[frame.type].new_ref(frame.data);
        if (!frame.data)
            frame.type = MP_FRAME_NONE;
    }
    return frame;
}
