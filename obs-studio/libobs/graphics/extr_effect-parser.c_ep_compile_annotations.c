
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_effect_param {int type; int default_val; int effect; int section; int name; } ;
struct ep_param {int type; int default_val; int name; } ;
struct effect_parser {int effect; } ;
struct darray {size_t num; scalar_t__ array; } ;


 int EFFECT_ANNOTATION ;
 int bstrdup (int ) ;
 int da_move (int ,int ) ;
 int darray_resize (int,struct darray*,size_t) ;
 int debug_param (struct gs_effect_param*,struct ep_param*,size_t,char*) ;
 int get_effect_param_type (int ) ;

__attribute__((used)) static void ep_compile_annotations(struct darray *ep_annotations,
       struct darray *gsp_annotations,
       struct effect_parser *ep)
{
 darray_resize(sizeof(struct gs_effect_param), gsp_annotations,
        ep_annotations->num);

 size_t i;
 for (i = 0; i < ep_annotations->num; i++) {
  struct gs_effect_param *param =
   ((struct gs_effect_param *)gsp_annotations->array) + i;
  struct ep_param *param_in =
   ((struct ep_param *)ep_annotations->array) + i;

  param->name = bstrdup(param_in->name);
  param->section = EFFECT_ANNOTATION;
  param->effect = ep->effect;
  da_move(param->default_val, param_in->default_val);

  param->type = get_effect_param_type(param_in->type);




 }
}
