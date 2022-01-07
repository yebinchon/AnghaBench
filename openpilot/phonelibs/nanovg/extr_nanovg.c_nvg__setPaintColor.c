
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float radius; float feather; void* outerColor; void* innerColor; int xform; } ;
typedef TYPE_1__ NVGpaint ;
typedef void* NVGcolor ;


 int memset (TYPE_1__*,int ,int) ;
 int nvgTransformIdentity (int ) ;

__attribute__((used)) static void nvg__setPaintColor(NVGpaint* p, NVGcolor color)
{
 memset(p, 0, sizeof(*p));
 nvgTransformIdentity(p->xform);
 p->radius = 0.0f;
 p->feather = 1.0f;
 p->innerColor = color;
 p->outerColor = color;
}
