
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;


 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static PQconninfoOption *
conninfo_find(PQconninfoOption *connOptions, const char *keyword)
{
 PQconninfoOption *option;

 for (option = connOptions; option->keyword != ((void*)0); option++)
 {
  if (strcmp(option->keyword, keyword) == 0)
   return option;
 }

 return ((void*)0);
}
