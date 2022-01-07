
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {scalar_t__ behavior; int pause_on_deactivate; } ;


 scalar_t__ BEHAVIOR_PAUSE_UNPAUSE ;

__attribute__((used)) static void ss_deactivate(void *data)
{
 struct slideshow *ss = data;

 if (ss->behavior == BEHAVIOR_PAUSE_UNPAUSE)
  ss->pause_on_deactivate = 1;
}
