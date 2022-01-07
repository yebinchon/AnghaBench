
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num; } ;
struct TYPE_4__ {size_t num; } ;
struct effect_parser {TYPE_2__ techniques; TYPE_1__ params; TYPE_3__* effect; } ;
struct TYPE_6__ {int techniques; int params; } ;


 int LOG_DEBUG ;
 int assert (TYPE_3__*) ;
 int blog (int ,char*,size_t) ;
 int da_resize (int ,size_t) ;
 int ep_compile_param (struct effect_parser*,size_t) ;
 int ep_compile_technique (struct effect_parser*,size_t) ;

__attribute__((used)) static bool ep_compile(struct effect_parser *ep)
{
 bool success = 1;
 size_t i;

 assert(ep->effect);

 da_resize(ep->effect->params, ep->params.num);
 da_resize(ep->effect->techniques, ep->techniques.num);





 for (i = 0; i < ep->params.num; i++)
  ep_compile_param(ep, i);





 for (i = 0; i < ep->techniques.num; i++) {
  if (!ep_compile_technique(ep, i))
   success = 0;
 }

 return success;
}
