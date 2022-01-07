
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PgStat_BackendFunctionEntry ;
typedef int Oid ;


 int HASH_FIND ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 int * pgStatFunctions ;

PgStat_BackendFunctionEntry *
find_funcstat_entry(Oid func_id)
{
 if (pgStatFunctions == ((void*)0))
  return ((void*)0);

 return (PgStat_BackendFunctionEntry *) hash_search(pgStatFunctions,
                (void *) &func_id,
                HASH_FIND, ((void*)0));
}
