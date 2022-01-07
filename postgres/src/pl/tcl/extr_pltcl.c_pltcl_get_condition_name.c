
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* label; int sqlerrstate; } ;


 TYPE_1__* exception_name_map ;

__attribute__((used)) static const char *
pltcl_get_condition_name(int sqlstate)
{
 int i;

 for (i = 0; exception_name_map[i].label != ((void*)0); i++)
 {
  if (exception_name_map[i].sqlerrstate == sqlstate)
   return exception_name_map[i].label;
 }
 return "unrecognized_sqlstate";
}
