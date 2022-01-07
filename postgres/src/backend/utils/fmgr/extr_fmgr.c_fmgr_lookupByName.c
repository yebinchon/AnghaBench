
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int funcName; } ;
typedef TYPE_1__ FmgrBuiltin ;


 TYPE_1__ const* fmgr_builtins ;
 int fmgr_nbuiltins ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const FmgrBuiltin *
fmgr_lookupByName(const char *name)
{
 int i;

 for (i = 0; i < fmgr_nbuiltins; i++)
 {
  if (strcmp(name, fmgr_builtins[i].funcName) == 0)
   return fmgr_builtins + i;
 }
 return ((void*)0);
}
