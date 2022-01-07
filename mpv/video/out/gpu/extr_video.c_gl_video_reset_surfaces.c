
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_video {int output_tex_valid; scalar_t__ frames_drawn; scalar_t__ surface_now; scalar_t__ surface_idx; TYPE_1__* surfaces; } ;
struct TYPE_2__ {int pts; scalar_t__ id; } ;


 int MP_NOPTS_VALUE ;
 int SURFACES_MAX ;

__attribute__((used)) static void gl_video_reset_surfaces(struct gl_video *p)
{
    for (int i = 0; i < SURFACES_MAX; i++) {
        p->surfaces[i].id = 0;
        p->surfaces[i].pts = MP_NOPTS_VALUE;
    }
    p->surface_idx = 0;
    p->surface_now = 0;
    p->frames_drawn = 0;
    p->output_tex_valid = 0;
}
