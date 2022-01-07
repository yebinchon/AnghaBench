
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
struct gpu_delay_filter_data {TYPE_1__ frames; } ;
struct frame {int render; } ;
typedef int frame ;


 int circlebuf_free (TYPE_1__*) ;
 int circlebuf_pop_front (TYPE_1__*,struct frame*,int) ;
 int gs_texrender_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void free_textures(struct gpu_delay_filter_data *f)
{
 obs_enter_graphics();
 while (f->frames.size) {
  struct frame frame;
  circlebuf_pop_front(&f->frames, &frame, sizeof(frame));
  gs_texrender_destroy(frame.render);
 }
 circlebuf_free(&f->frames);
 obs_leave_graphics();
}
