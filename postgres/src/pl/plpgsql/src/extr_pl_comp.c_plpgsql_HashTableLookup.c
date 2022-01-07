
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * function; } ;
typedef TYPE_1__ plpgsql_HashEnt ;
typedef int PLpgSQL_function ;
typedef int PLpgSQL_func_hashkey ;


 int HASH_FIND ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int plpgsql_HashTable ;

__attribute__((used)) static PLpgSQL_function *
plpgsql_HashTableLookup(PLpgSQL_func_hashkey *func_key)
{
 plpgsql_HashEnt *hentry;

 hentry = (plpgsql_HashEnt *) hash_search(plpgsql_HashTable,
            (void *) func_key,
            HASH_FIND,
            ((void*)0));
 if (hentry)
  return hentry->function;
 else
  return ((void*)0);
}
