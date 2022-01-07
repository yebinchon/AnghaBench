
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpvs_fmt {scalar_t__ cw; scalar_t__ ch; scalar_t__ bits; } ;
struct mp_regular_imgfmt {scalar_t__ component_pad; scalar_t__ chroma_w; scalar_t__ chroma_h; int component_size; int num_planes; TYPE_1__* planes; } ;
struct TYPE_2__ {int num_components; int* components; } ;


 int mp_get_regular_imgfmt (struct mp_regular_imgfmt*,int) ;

__attribute__((used)) static bool compare_fmt(int imgfmt, const struct mpvs_fmt *vs)
{
    struct mp_regular_imgfmt rfmt;
    if (!mp_get_regular_imgfmt(&rfmt, imgfmt))
        return 0;
    if (rfmt.component_pad > 0)
        return 0;
    if (rfmt.chroma_w != vs->cw || rfmt.chroma_h != vs->ch)
        return 0;
    if (rfmt.component_size * 8 + rfmt.component_pad != vs->bits)
        return 0;
    if (rfmt.num_planes != 3)
        return 0;
    for (int n = 0; n < 3; n++) {
        if (rfmt.planes[n].num_components != 1)
            return 0;
        if (rfmt.planes[n].components[0] != n + 1)
            return 0;
    }
    return 1;
}
