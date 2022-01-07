
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_12__ ;


typedef scalar_t__ uint32_t ;
struct transition_state {scalar_t__* s; scalar_t__ transitioning_audio; scalar_t__ transitioning_video; } ;
struct matrix4 {int dummy; } ;
typedef int (* obs_transition_video_render_callback_t ) (int ,int *,int *,float,scalar_t__,scalar_t__) ;
struct TYPE_22__ {int data; } ;
struct TYPE_23__ {int transitioning_video; TYPE_2__ context; struct matrix4* transition_matrices; int transitioning_audio; } ;
typedef TYPE_3__ obs_source_t ;
typedef int gs_texture_t ;
struct TYPE_21__ {int * transparent_texture; } ;
struct TYPE_20__ {TYPE_1__ video; } ;


 int GS_BLEND_INVSRCALPHA ;
 int GS_BLEND_ONE ;
 int copy_transition_state (TYPE_3__*,struct transition_state*) ;
 scalar_t__ get_cx (TYPE_3__*) ;
 scalar_t__ get_cy (TYPE_3__*) ;
 int * get_texture (TYPE_3__*,size_t) ;
 float get_video_time (TYPE_3__*) ;
 int gs_blend_function (int ,int ) ;
 int gs_blend_state_pop () ;
 int gs_blend_state_push () ;
 int gs_matrix_mul (struct matrix4*) ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int handle_stop (TYPE_3__*) ;
 int lock_transition (TYPE_3__*) ;
 TYPE_12__* obs ;
 int obs_source_dosignal (TYPE_3__*,char*,char*) ;
 int obs_source_release (scalar_t__) ;
 int obs_source_video_render (scalar_t__) ;
 int obs_transition_stop (TYPE_3__*) ;
 int render_child (TYPE_3__*,scalar_t__,size_t) ;
 int transition_valid (TYPE_3__*,char*) ;
 scalar_t__ trylock_textures (TYPE_3__*) ;
 int unlock_textures (TYPE_3__*) ;
 int unlock_transition (TYPE_3__*) ;

void obs_transition_video_render(obs_source_t *transition,
     obs_transition_video_render_callback_t callback)
{
 struct transition_state state;
 struct matrix4 matrices[2];
 bool locked = 0;
 bool stopped = 0;
 bool video_stopped = 0;
 float t;

 if (!transition_valid(transition, "obs_transition_video_render"))
  return;

 t = get_video_time(transition);

 lock_transition(transition);

 if (t >= 1.0f && transition->transitioning_video) {
  transition->transitioning_video = 0;
  video_stopped = 1;

  if (!transition->transitioning_audio) {
   obs_transition_stop(transition);
   stopped = 1;
  }
 }
 copy_transition_state(transition, &state);
 matrices[0] = transition->transition_matrices[0];
 matrices[1] = transition->transition_matrices[1];

 unlock_transition(transition);

 if (state.transitioning_video)
  locked = trylock_textures(transition) == 0;

 if (state.transitioning_video && locked && callback) {
  gs_texture_t *tex[2];
  uint32_t cx;
  uint32_t cy;

  for (size_t i = 0; i < 2; i++) {
   if (state.s[i]) {
    render_child(transition, state.s[i], i);
    tex[i] = get_texture(transition, i);
    if (!tex[i])
     tex[i] = obs->video.transparent_texture;
   } else {
    tex[i] = obs->video.transparent_texture;
   }
  }

  cx = get_cx(transition);
  cy = get_cy(transition);
  if (cx && cy) {
   gs_blend_state_push();
   gs_blend_function(GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);

   callback(transition->context.data, tex[0], tex[1], t,
     cx, cy);

   gs_blend_state_pop();
  }

 } else if (state.transitioning_audio) {
  if (state.s[1]) {
   gs_matrix_push();
   gs_matrix_mul(&matrices[1]);
   obs_source_video_render(state.s[1]);
   gs_matrix_pop();
  }
 } else {
  if (state.s[0]) {
   gs_matrix_push();
   gs_matrix_mul(&matrices[0]);
   obs_source_video_render(state.s[0]);
   gs_matrix_pop();
  }
 }

 if (locked)
  unlock_textures(transition);

 obs_source_release(state.s[0]);
 obs_source_release(state.s[1]);

 if (video_stopped)
  obs_source_dosignal(transition, "source_transition_video_stop",
        "transition_video_stop");
 if (stopped)
  handle_stop(transition);
}
