
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t num; } ;
struct TYPE_9__ {TYPE_3__ passes; TYPE_2__* effect; } ;
typedef TYPE_4__ gs_technique_t ;
struct TYPE_7__ {TYPE_1__* graphics; TYPE_4__* cur_technique; } ;
struct TYPE_6__ {TYPE_2__* cur_effect; } ;



size_t gs_technique_begin(gs_technique_t *tech)
{
 if (!tech)
  return 0;

 tech->effect->cur_technique = tech;
 tech->effect->graphics->cur_effect = tech->effect;

 return tech->passes.num;
}
