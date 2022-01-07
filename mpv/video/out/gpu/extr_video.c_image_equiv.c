
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct image {scalar_t__ type; scalar_t__ components; scalar_t__ multiplier; scalar_t__ w; scalar_t__ h; int transform; TYPE_2__* tex; } ;
struct TYPE_3__ {scalar_t__ format; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_4__ {TYPE_1__ params; } ;


 scalar_t__ gl_transform_eq (int ,int ) ;

__attribute__((used)) static bool image_equiv(struct image a, struct image b)
{
    return a.type == b.type &&
           a.components == b.components &&
           a.multiplier == b.multiplier &&
           a.tex->params.format == b.tex->params.format &&
           a.tex->params.w == b.tex->params.w &&
           a.tex->params.h == b.tex->params.h &&
           a.w == b.w &&
           a.h == b.h &&
           gl_transform_eq(a.transform, b.transform);
}
