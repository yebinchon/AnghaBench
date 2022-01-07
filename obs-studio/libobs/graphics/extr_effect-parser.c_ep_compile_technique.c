
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {size_t num; } ;
struct gs_effect_technique {TYPE_5__ passes; int name; TYPE_3__* effect; int section; } ;
struct TYPE_9__ {int num; } ;
struct ep_technique {TYPE_4__ passes; int name; } ;
struct TYPE_7__ {struct ep_technique* array; } ;
struct effect_parser {TYPE_3__* effect; TYPE_2__ techniques; } ;
struct TYPE_6__ {struct gs_effect_technique* array; } ;
struct TYPE_8__ {TYPE_1__ techniques; } ;


 int EFFECT_TECHNIQUE ;
 int LOG_DEBUG ;
 int blog (int ,char*,size_t,int ,size_t) ;
 int bstrdup (int ) ;
 int da_resize (TYPE_5__,int ) ;
 int ep_compile_pass (struct effect_parser*,struct gs_effect_technique*,struct ep_technique*,size_t) ;

__attribute__((used)) static inline bool ep_compile_technique(struct effect_parser *ep, size_t idx)
{
 struct gs_effect_technique *tech;
 struct ep_technique *tech_in;
 bool success = 1;
 size_t i;

 tech = ep->effect->techniques.array + idx;
 tech_in = ep->techniques.array + idx;

 tech->name = bstrdup(tech_in->name);
 tech->section = EFFECT_TECHNIQUE;
 tech->effect = ep->effect;

 da_resize(tech->passes, tech_in->passes.num);






 for (i = 0; i < tech->passes.num; i++) {
  if (!ep_compile_pass(ep, tech, tech_in, i))
   success = 0;
 }

 return success;
}
