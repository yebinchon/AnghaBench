
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct gs_effect_pass* array; } ;
struct gs_effect_technique {TYPE_1__ passes; } ;
struct gs_effect_pass {char* name; int section; } ;
struct TYPE_4__ {struct ep_pass* array; } ;
struct ep_technique {TYPE_2__ passes; } ;
struct ep_pass {int name; } ;
struct effect_parser {int dummy; } ;


 int EFFECT_PASS ;
 int GS_SHADER_PIXEL ;
 int GS_SHADER_VERTEX ;
 int LOG_DEBUG ;
 int LOG_ERROR ;
 int blog (int ,char*,size_t,char*) ;
 char* bstrdup (int ) ;
 int ep_compile_pass_shader (struct effect_parser*,struct gs_effect_technique*,struct gs_effect_pass*,struct ep_pass*,size_t,int ) ;

__attribute__((used)) static bool ep_compile_pass(struct effect_parser *ep,
       struct gs_effect_technique *tech,
       struct ep_technique *tech_in, size_t idx)
{
 struct gs_effect_pass *pass;
 struct ep_pass *pass_in;
 bool success = 1;

 pass = tech->passes.array + idx;
 pass_in = tech_in->passes.array + idx;

 pass->name = bstrdup(pass_in->name);
 pass->section = EFFECT_PASS;





 if (!ep_compile_pass_shader(ep, tech, pass, pass_in, idx,
        GS_SHADER_VERTEX)) {
  success = 0;
  blog(LOG_ERROR, "Pass (%zu) <%s> missing vertex shader!", idx,
       pass->name ? pass->name : "");
 }
 if (!ep_compile_pass_shader(ep, tech, pass, pass_in, idx,
        GS_SHADER_PIXEL)) {
  success = 0;
  blog(LOG_ERROR, "Pass (%zu) <%s> missing pixel shader!", idx,
       pass->name ? pass->name : "");
 }
 return success;
}
