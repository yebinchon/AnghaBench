
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_effect_param {int type; int default_val; TYPE_3__* effect; int section; int name; } ;
struct ep_param {int name; int type; int default_val; struct gs_effect_param* param; } ;
struct TYPE_5__ {struct ep_param* array; } ;
struct effect_parser {TYPE_3__* effect; TYPE_2__ params; } ;
struct TYPE_4__ {struct gs_effect_param* array; } ;
struct TYPE_6__ {struct gs_effect_param* world; struct gs_effect_param* view_proj; TYPE_1__ params; } ;


 int EFFECT_PARAM ;
 int bstrdup (int ) ;
 int da_move (int ,int ) ;
 int debug_param (struct gs_effect_param*,struct ep_param*,size_t,char*) ;
 int ep_compile_param_annotations (struct ep_param*,struct gs_effect_param*,struct effect_parser*) ;
 int get_effect_param_type (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void ep_compile_param(struct effect_parser *ep, size_t idx)
{
 struct gs_effect_param *param;
 struct ep_param *param_in;

 param = ep->effect->params.array + idx;
 param_in = ep->params.array + idx;
 param_in->param = param;

 param->name = bstrdup(param_in->name);
 param->section = EFFECT_PARAM;
 param->effect = ep->effect;
 da_move(param->default_val, param_in->default_val);

 param->type = get_effect_param_type(param_in->type);

 if (strcmp(param_in->name, "ViewProj") == 0)
  ep->effect->view_proj = param;
 else if (strcmp(param_in->name, "World") == 0)
  ep->effect->world = param;





 ep_compile_param_annotations(param_in, param, ep);
}
