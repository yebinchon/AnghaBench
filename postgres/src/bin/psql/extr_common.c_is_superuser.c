
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 char* PQparameterStatus (int ,char*) ;
 TYPE_1__ pset ;
 scalar_t__ strcmp (char const*,char*) ;

bool
is_superuser(void)
{
 const char *val;

 if (!pset.db)
  return 0;

 val = PQparameterStatus(pset.db, "is_superuser");

 if (val && strcmp(val, "on") == 0)
  return 1;

 return 0;
}
