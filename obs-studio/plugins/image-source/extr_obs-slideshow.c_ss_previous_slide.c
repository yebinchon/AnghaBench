
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct slideshow {scalar_t__ cur_item; TYPE_1__ files; int transition; } ;


 int do_transition (struct slideshow*,int) ;
 float obs_transition_get_time (int ) ;

__attribute__((used)) static void ss_previous_slide(void *data)
{
 struct slideshow *ss = data;

 if (!ss->files.num || obs_transition_get_time(ss->transition) < 1.0f)
  return;

 if (ss->cur_item == 0)
  ss->cur_item = ss->files.num - 1;
 else
  --ss->cur_item;

 do_transition(ss, 0);
}
