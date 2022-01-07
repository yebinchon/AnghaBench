
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int da; } ;
struct TYPE_6__ {int da; } ;
struct gs_effect_pass {TYPE_2__ pixelshader_params; TYPE_1__ vertshader_params; } ;
struct TYPE_9__ {TYPE_3__* effect; } ;
typedef TYPE_4__ gs_technique_t ;
struct TYPE_8__ {struct gs_effect_pass* cur_pass; } ;


 int clear_tex_params (int *) ;

void gs_technique_end_pass(gs_technique_t *tech)
{
 if (!tech)
  return;

 struct gs_effect_pass *pass = tech->effect->cur_pass;
 if (!pass)
  return;

 clear_tex_params(&pass->vertshader_params.da);
 clear_tex_params(&pass->pixelshader_params.da);
 tech->effect->cur_pass = ((void*)0);
}
