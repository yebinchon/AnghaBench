
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gpu_delay_filter_data {int interval_ns; int delay_ns; int frames; int target_valid; } ;
struct frame {int render; } ;
typedef int frame ;


 int GS_RGBA ;
 int GS_ZS_NONE ;
 struct frame* circlebuf_data (int *,size_t) ;
 int circlebuf_pop_front (int *,struct frame*,int) ;
 int circlebuf_upsize (int *,size_t) ;
 int free_textures (struct gpu_delay_filter_data*) ;
 int gs_texrender_create (int ,int ) ;
 int gs_texrender_destroy (int ) ;
 size_t num_frames (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void update_interval(struct gpu_delay_filter_data *f,
       uint64_t new_interval_ns)
{
 if (!f->target_valid) {
  free_textures(f);
  return;
 }

 f->interval_ns = new_interval_ns;
 size_t num = (size_t)(f->delay_ns / new_interval_ns);

 if (num > num_frames(&f->frames)) {
  size_t prev_num = num_frames(&f->frames);

  obs_enter_graphics();

  circlebuf_upsize(&f->frames, num * sizeof(struct frame));

  for (size_t i = prev_num; i < num; i++) {
   struct frame *frame =
    circlebuf_data(&f->frames, i * sizeof(*frame));
   frame->render =
    gs_texrender_create(GS_RGBA, GS_ZS_NONE);
  }

  obs_leave_graphics();

 } else if (num < num_frames(&f->frames)) {
  obs_enter_graphics();

  while (num_frames(&f->frames) > num) {
   struct frame frame;
   circlebuf_pop_front(&f->frames, &frame, sizeof(frame));
   gs_texrender_destroy(frame.render);
  }

  obs_leave_graphics();
 }
}
