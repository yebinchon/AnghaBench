
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int vscore; TYPE_1__* vsapi; } ;
struct mp_image_params {int h; int w; int imgfmt; } ;
typedef int VSFrameRef ;
typedef int VSFormat ;
struct TYPE_2__ {int * (* newVideoFrame ) (int const*,int ,int ,int *,int ) ;int * (* getFormatPreset ) (int ,int ) ;} ;


 int mp_to_vs (int ) ;
 int * stub1 (int ,int ) ;
 int * stub2 (int const*,int ,int ,int *,int ) ;

__attribute__((used)) static VSFrameRef *alloc_vs_frame(struct priv *p, struct mp_image_params *fmt)
{
    const VSFormat *vsfmt =
        p->vsapi->getFormatPreset(mp_to_vs(fmt->imgfmt), p->vscore);
    return p->vsapi->newVideoFrame(vsfmt, fmt->w, fmt->h, ((void*)0), p->vscore);
}
