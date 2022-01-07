
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {int paused; int manual; } ;



__attribute__((used)) static void ss_play_pause(void *data)
{
 struct slideshow *ss = data;

 ss->paused = !ss->paused;
 ss->manual = ss->paused;
}
