
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ use_count; } ;
typedef TYPE_1__ PLpgSQL_function ;


 int plpgsql_HashTableDelete (TYPE_1__*) ;
 int plpgsql_free_function_memory (TYPE_1__*) ;

__attribute__((used)) static void
delete_function(PLpgSQL_function *func)
{

 plpgsql_HashTableDelete(func);


 if (func->use_count == 0)
  plpgsql_free_function_memory(func);
}
