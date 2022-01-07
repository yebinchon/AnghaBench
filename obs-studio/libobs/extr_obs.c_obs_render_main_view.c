
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int main_view; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 TYPE_2__* obs ;
 int obs_view_render (int *) ;

void obs_render_main_view(void)
{
 if (!obs)
  return;
 obs_view_render(&obs->data.main_view);
}
