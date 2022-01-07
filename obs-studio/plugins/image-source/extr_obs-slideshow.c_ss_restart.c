
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* array; } ;
struct slideshow {float elapsed; size_t cur_item; int stop; int paused; TYPE_2__ files; int transition; } ;
struct TYPE_3__ {int source; } ;


 int obs_transition_set (int ,int ) ;

__attribute__((used)) static void ss_restart(void *data)
{
 struct slideshow *ss = data;

 ss->elapsed = 0.0f;
 ss->cur_item = 0;

 obs_transition_set(ss->transition,
      ss->files.array[ss->cur_item].source);

 ss->stop = 0;
 ss->paused = 0;
}
