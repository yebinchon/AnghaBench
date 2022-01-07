
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {TYPE_1__* vsapi; } ;
struct mp_image {int dummy; } ;
typedef int VSMap ;
typedef int VSFrameRef ;
struct TYPE_2__ {int (* propSetInt ) (int *,char*,int,int ) ;int * (* getFramePropsRW ) (int *) ;} ;


 int copy_mp_to_vs_frame_props_map (struct priv*,int *,struct mp_image*) ;
 int * stub1 (int *) ;
 int stub2 (int *,char*,int,int ) ;
 int stub3 (int *,char*,int,int ) ;

__attribute__((used)) static int set_vs_frame_props(struct priv *p, VSFrameRef *frame,
                              struct mp_image *img, int dur_num, int dur_den)
{
    VSMap *map = p->vsapi->getFramePropsRW(frame);
    if (!map)
        return -1;
    p->vsapi->propSetInt(map, "_DurationNum", dur_num, 0);
    p->vsapi->propSetInt(map, "_DurationDen", dur_den, 0);
    copy_mp_to_vs_frame_props_map(p, map, img);
    return 0;
}
