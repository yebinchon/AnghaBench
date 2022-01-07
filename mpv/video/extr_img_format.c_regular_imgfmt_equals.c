
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_regular_imgfmt {scalar_t__ component_type; scalar_t__ component_size; scalar_t__ num_planes; scalar_t__ component_pad; scalar_t__ forced_csp; scalar_t__ chroma_w; scalar_t__ chroma_h; TYPE_1__* planes; } ;
struct TYPE_2__ {int num_components; scalar_t__* components; } ;



__attribute__((used)) static bool regular_imgfmt_equals(struct mp_regular_imgfmt *a,
                                  struct mp_regular_imgfmt *b)
{
    if (a->component_type != b->component_type ||
        a->component_size != b->component_size ||
        a->num_planes != b->num_planes ||
        a->component_pad != b->component_pad ||
        a->forced_csp != b->forced_csp ||
        a->chroma_w != b->chroma_w ||
        a->chroma_h != b->chroma_h)
        return 0;

    for (int n = 0; n < a->num_planes; n++) {
        int num_comps = a->planes[n].num_components;
        if (num_comps != b->planes[n].num_components)
            return 0;
        for (int i = 0; i < num_comps; i++) {
            if (a->planes[n].components[i] != b->planes[n].components[i])
                return 0;
        }
    }

    return 1;
}
