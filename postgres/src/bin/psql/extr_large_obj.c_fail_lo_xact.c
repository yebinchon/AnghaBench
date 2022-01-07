
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autocommit; } ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
fail_lo_xact(const char *operation, bool own_transaction)
{
 PGresult *res;

 if (own_transaction && pset.autocommit)
 {

  res = PSQLexec("ROLLBACK");
  PQclear(res);
 }

 return 0;
}
