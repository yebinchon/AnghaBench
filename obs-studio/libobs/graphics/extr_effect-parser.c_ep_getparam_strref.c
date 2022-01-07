
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int dummy; } ;
struct ep_param {int name; } ;
struct TYPE_2__ {size_t num; struct ep_param* array; } ;
struct effect_parser {TYPE_1__ params; } ;


 scalar_t__ strref_cmp (struct strref const*,int ) ;

__attribute__((used)) static inline struct ep_param *ep_getparam_strref(struct effect_parser *ep,
        const struct strref *ref)
{
 size_t i;
 for (i = 0; i < ep->params.num; i++) {
  if (strref_cmp(ref, ep->params.array[i].name) == 0)
   return ep->params.array + i;
 }

 return ((void*)0);
}
