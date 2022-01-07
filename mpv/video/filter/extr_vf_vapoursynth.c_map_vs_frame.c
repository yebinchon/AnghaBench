
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct priv {TYPE_1__* vsapi; } ;
struct mp_image {int num_planes; int * stride; int ** planes; int member_0; } ;
typedef int VSFrameRef ;
struct TYPE_5__ {int id; } ;
typedef TYPE_2__ VSFormat ;
struct TYPE_4__ {int (* getStride ) (int const*,int) ;scalar_t__ (* getReadPtr ) (int const*,int) ;int * (* getWritePtr ) (int *,int) ;int (* getFrameHeight ) (int const*,int ) ;int (* getFrameWidth ) (int const*,int ) ;TYPE_2__* (* getFrameFormat ) (int const*) ;} ;


 int mp_from_vs (int ) ;
 int mp_image_set_size (struct mp_image*,int ,int ) ;
 int mp_image_setfmt (struct mp_image*,int ) ;
 TYPE_2__* stub1 (int const*) ;
 int stub2 (int const*,int ) ;
 int stub3 (int const*,int ) ;
 int * stub4 (int *,int) ;
 scalar_t__ stub5 (int const*,int) ;
 int stub6 (int const*,int) ;

__attribute__((used)) static struct mp_image map_vs_frame(struct priv *p, const VSFrameRef *ref,
                                    bool w)
{
    const VSFormat *fmt = p->vsapi->getFrameFormat(ref);

    struct mp_image img = {0};
    mp_image_setfmt(&img, mp_from_vs(fmt->id));
    mp_image_set_size(&img, p->vsapi->getFrameWidth(ref, 0),
                            p->vsapi->getFrameHeight(ref, 0));

    for (int n = 0; n < img.num_planes; n++) {
        if (w) {
            img.planes[n] = p->vsapi->getWritePtr((VSFrameRef *)ref, n);
        } else {
            img.planes[n] = (uint8_t *)p->vsapi->getReadPtr(ref, n);
        }
        img.stride[n] = p->vsapi->getStride(ref, n);
    }

    return img;
}
