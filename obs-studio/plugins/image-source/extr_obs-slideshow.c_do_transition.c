
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* array; } ;
struct slideshow {size_t cur_item; int tr_speed; int transition; TYPE_1__ files; scalar_t__ use_cut; } ;
struct TYPE_4__ {int * source; } ;


 int OBS_TRANSITION_MODE_AUTO ;
 int item_valid (struct slideshow*) ;
 int obs_transition_set (int ,int *) ;
 int obs_transition_start (int ,int ,int ,int *) ;

__attribute__((used)) static void do_transition(void *data, bool to_null)
{
 struct slideshow *ss = data;
 bool valid = item_valid(ss);

 if (valid && ss->use_cut)
  obs_transition_set(ss->transition,
       ss->files.array[ss->cur_item].source);

 else if (valid && !to_null)
  obs_transition_start(ss->transition, OBS_TRANSITION_MODE_AUTO,
         ss->tr_speed,
         ss->files.array[ss->cur_item].source);

 else
  obs_transition_start(ss->transition, OBS_TRANSITION_MODE_AUTO,
         ss->tr_speed, ((void*)0));
}
