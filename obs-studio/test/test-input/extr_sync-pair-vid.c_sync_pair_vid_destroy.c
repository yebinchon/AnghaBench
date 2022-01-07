
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_pair_vid {int black; int white; int tex; } ;


 int bfree (struct sync_pair_vid*) ;
 int gs_texture_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void sync_pair_vid_destroy(void *data)
{
 struct sync_pair_vid *spv = data;

 obs_enter_graphics();
 gs_texture_destroy(spv->tex);
 gs_texture_destroy(spv->white);
 gs_texture_destroy(spv->black);
 obs_leave_graphics();

 bfree(spv);
}
