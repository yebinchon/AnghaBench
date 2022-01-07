
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vec4 {int dummy; } ;
struct TYPE_7__ {int * transition_texrender; int * transition_matrices; } ;
typedef TYPE_1__ obs_source_t ;


 int GS_CLEAR_COLOR ;
 scalar_t__ get_cx (TYPE_1__*) ;
 scalar_t__ get_cy (TYPE_1__*) ;
 int gs_clear (int ,struct vec4*,float,int ) ;
 int gs_matrix_mul (int *) ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_ortho (float,float,float,float,float,float) ;
 scalar_t__ gs_texrender_begin (int ,scalar_t__,scalar_t__) ;
 int gs_texrender_end (int ) ;
 int obs_source_video_render (TYPE_1__*) ;
 int vec4_zero (struct vec4*) ;

__attribute__((used)) static inline void render_child(obs_source_t *transition, obs_source_t *child,
    size_t idx)
{
 uint32_t cx = get_cx(transition);
 uint32_t cy = get_cy(transition);
 struct vec4 blank;
 if (!child)
  return;

 if (gs_texrender_begin(transition->transition_texrender[idx], cx, cy)) {
  vec4_zero(&blank);
  gs_clear(GS_CLEAR_COLOR, &blank, 0.0f, 0);
  gs_ortho(0.0f, (float)cx, 0.0f, (float)cy, -100.0f, 100.0f);

  gs_matrix_push();
  gs_matrix_mul(&transition->transition_matrices[idx]);
  obs_source_video_render(child);
  gs_matrix_pop();

  gs_texrender_end(transition->transition_texrender[idx]);
 }
}
