
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; TYPE_2__* function; } ;
typedef TYPE_1__ plpgsql_HashEnt ;
struct TYPE_5__ {int * fn_hashkey; } ;
typedef TYPE_2__ PLpgSQL_function ;
typedef int PLpgSQL_func_hashkey ;


 int HASH_ENTER ;
 int WARNING ;
 int elog (int ,char*) ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;
 int plpgsql_HashTable ;

__attribute__((used)) static void
plpgsql_HashTableInsert(PLpgSQL_function *function,
      PLpgSQL_func_hashkey *func_key)
{
 plpgsql_HashEnt *hentry;
 bool found;

 hentry = (plpgsql_HashEnt *) hash_search(plpgsql_HashTable,
            (void *) func_key,
            HASH_ENTER,
            &found);
 if (found)
  elog(WARNING, "trying to insert a function that already exists");

 hentry->function = function;

 function->fn_hashkey = &hentry->key;
}
