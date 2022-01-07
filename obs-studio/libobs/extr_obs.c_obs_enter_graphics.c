
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ graphics; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int gs_enter_context (scalar_t__) ;
 TYPE_2__* obs ;

void obs_enter_graphics(void)
{
 if (obs && obs->video.graphics)
  gs_enter_context(obs->video.graphics);
}
