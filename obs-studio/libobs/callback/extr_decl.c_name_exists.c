
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct decl_info {TYPE_2__ params; } ;
struct TYPE_3__ {char* name; } ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool name_exists(struct decl_info *decl, const char *name)
{
 for (size_t i = 0; i < decl->params.num; i++) {
  const char *param_name = decl->params.array[i].name;

  if (strcmp(name, param_name) == 0)
   return 1;
 }

 return 0;
}
