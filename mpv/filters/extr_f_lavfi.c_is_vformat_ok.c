
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ p_w; scalar_t__ p_h; } ;
struct mp_image {scalar_t__ imgfmt; scalar_t__ w; scalar_t__ nominal_fps; TYPE_1__ params; scalar_t__ h; } ;



__attribute__((used)) static bool is_vformat_ok(struct mp_image *a, struct mp_image *b)
{
    return a->imgfmt == b->imgfmt &&
           a->w == b->w && a->h && b->h &&
           a->params.p_w == b->params.p_w && a->params.p_h == b->params.p_h &&
           a->nominal_fps == b->nominal_fps;
}
