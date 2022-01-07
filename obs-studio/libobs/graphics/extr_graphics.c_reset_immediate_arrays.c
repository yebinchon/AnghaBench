
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * texverts; int colors; int norms; int verts; } ;
typedef TYPE_1__ graphics_t ;


 int da_init (int ) ;

__attribute__((used)) static inline void reset_immediate_arrays(graphics_t *graphics)
{
 da_init(graphics->verts);
 da_init(graphics->norms);
 da_init(graphics->colors);
 for (size_t i = 0; i < 16; i++)
  da_init(graphics->texverts[i]);
}
