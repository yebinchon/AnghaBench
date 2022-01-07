
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int alias; } ;
typedef TYPE_1__ PX_Alias ;


 scalar_t__ pg_strcasecmp (int ,char const*) ;

const char *
px_resolve_alias(const PX_Alias *list, const char *name)
{
 while (list->name)
 {
  if (pg_strcasecmp(list->alias, name) == 0)
   return list->name;
  list++;
 }
 return name;
}
