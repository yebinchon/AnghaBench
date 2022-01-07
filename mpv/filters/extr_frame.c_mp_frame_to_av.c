
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_frame {size_t type; int data; } ;
struct AVRational {int dummy; } ;
struct TYPE_6__ {TYPE_1__* (* new_av_ref ) (int ) ;} ;
struct TYPE_5__ {int pts; } ;
typedef TYPE_1__ AVFrame ;


 TYPE_4__* frame_handlers ;
 int mp_frame_get_pts (struct mp_frame) ;
 int mp_pts_to_av (int ,struct AVRational*) ;
 TYPE_1__* stub1 (int ) ;

AVFrame *mp_frame_to_av(struct mp_frame frame, struct AVRational *tb)
{
    if (!frame_handlers[frame.type].new_av_ref)
        return ((void*)0);

    AVFrame *res = frame_handlers[frame.type].new_av_ref(frame.data);
    if (!res)
        return ((void*)0);

    res->pts = mp_pts_to_av(mp_frame_get_pts(frame), tb);
    return res;
}
