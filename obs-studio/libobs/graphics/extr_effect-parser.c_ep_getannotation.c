
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct ep_param* array; } ;
struct ep_param {TYPE_1__ annotations; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static inline struct ep_param *ep_getannotation(struct ep_param *param,
      const char *name)
{
 size_t i;
 for (i = 0; i < param->annotations.num; i++) {
  if (strcmp(name, param->annotations.array[i].name) == 0)
   return param->annotations.array + i;
 }

 return ((void*)0);
}
