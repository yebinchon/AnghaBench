
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rendered; int prev_zs; int prev_target; } ;
typedef TYPE_1__ gs_texrender_t ;


 int gs_matrix_pop () ;
 int gs_projection_pop () ;
 int gs_set_render_target (int ,int ) ;
 int gs_viewport_pop () ;

void gs_texrender_end(gs_texrender_t *texrender)
{
 if (!texrender)
  return;

 gs_set_render_target(texrender->prev_target, texrender->prev_zs);

 gs_matrix_pop();
 gs_projection_pop();
 gs_viewport_pop();

 texrender->rendered = 1;
}
