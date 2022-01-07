
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int plpgsql_HashEnt ;
struct TYPE_3__ {int * fn_hashkey; } ;
typedef TYPE_1__ PLpgSQL_function ;


 int HASH_REMOVE ;
 int WARNING ;
 int elog (int ,char*) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int plpgsql_HashTable ;

__attribute__((used)) static void
plpgsql_HashTableDelete(PLpgSQL_function *function)
{
 plpgsql_HashEnt *hentry;


 if (function->fn_hashkey == ((void*)0))
  return;

 hentry = (plpgsql_HashEnt *) hash_search(plpgsql_HashTable,
            (void *) function->fn_hashkey,
            HASH_REMOVE,
            ((void*)0));
 if (hentry == ((void*)0))
  elog(WARNING, "trying to delete function that does not exist");


 function->fn_hashkey = ((void*)0);
}
