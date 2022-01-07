
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep_struct {int name; } ;
struct TYPE_2__ {size_t num; struct ep_struct* array; } ;
struct effect_parser {TYPE_1__ structs; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static inline struct ep_struct *ep_getstruct(struct effect_parser *ep,
          const char *name)
{
 size_t i;
 for (i = 0; i < ep->structs.num; i++) {
  if (strcmp(name, ep->structs.array[i].name) == 0)
   return ep->structs.array + i;
 }

 return ((void*)0);
}
