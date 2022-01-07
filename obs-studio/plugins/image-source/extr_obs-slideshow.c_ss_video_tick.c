
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct slideshow {float slide_time; int restart_on_activate; int use_cut; float elapsed; int cur_item; int stop; TYPE_1__ files; scalar_t__ randomize; scalar_t__ hide; int loop; int transition; scalar_t__ paused; scalar_t__ manual; scalar_t__ pause_on_deactivate; } ;
typedef int obs_source_t ;


 int do_transition (struct slideshow*,int) ;
 int obs_source_release (int *) ;
 int * obs_transition_get_active_source (int ) ;
 size_t random_file (struct slideshow*) ;

__attribute__((used)) static void ss_video_tick(void *data, float seconds)
{
 struct slideshow *ss = data;

 if (!ss->transition || !ss->slide_time)
  return;

 if (ss->restart_on_activate && !ss->randomize && ss->use_cut) {
  ss->elapsed = 0.0f;
  ss->cur_item = 0;
  do_transition(ss, 0);
  ss->restart_on_activate = 0;
  ss->use_cut = 0;
  ss->stop = 0;
  return;
 }

 if (ss->pause_on_deactivate || ss->manual || ss->stop || ss->paused)
  return;



 if (!ss->files.num) {
  obs_source_t *active_transition_source =
   obs_transition_get_active_source(ss->transition);

  if (active_transition_source) {
   obs_source_release(active_transition_source);
   do_transition(ss, 1);
  }
 }



 ss->elapsed += seconds;

 if (ss->elapsed > ss->slide_time) {
  ss->elapsed -= ss->slide_time;

  if (!ss->loop && ss->cur_item == ss->files.num - 1) {
   if (ss->hide)
    do_transition(ss, 1);
   else
    do_transition(ss, 0);

   return;
  }

  if (ss->randomize) {
   size_t next = ss->cur_item;
   if (ss->files.num > 1) {
    while (next == ss->cur_item)
     next = random_file(ss);
   }
   ss->cur_item = next;

  } else if (++ss->cur_item >= ss->files.num) {
   ss->cur_item = 0;
  }

  if (ss->files.num)
   do_transition(ss, 0);
 }
}
