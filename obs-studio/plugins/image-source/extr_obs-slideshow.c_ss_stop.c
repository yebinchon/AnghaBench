
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {float elapsed; int stop; int paused; scalar_t__ cur_item; } ;


 int do_transition (struct slideshow*,int) ;

__attribute__((used)) static void ss_stop(void *data)
{
 struct slideshow *ss = data;

 ss->elapsed = 0.0f;
 ss->cur_item = 0;

 do_transition(ss, 1);
 ss->stop = 1;
 ss->paused = 0;
}
