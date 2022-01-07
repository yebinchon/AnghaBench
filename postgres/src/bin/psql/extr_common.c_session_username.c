
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 char* PQparameterStatus (int ,char*) ;
 char const* PQuser (int ) ;
 TYPE_1__ pset ;

const char *
session_username(void)
{
 const char *val;

 if (!pset.db)
  return ((void*)0);

 val = PQparameterStatus(pset.db, "session_authorization");
 if (val)
  return val;
 else
  return PQuser(pset.db);
}
