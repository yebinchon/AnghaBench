
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int engine_table_unregister (int *,int *) ;
 int rand_table ;

void ENGINE_unregister_RAND(ENGINE *e)
{
    engine_table_unregister(&rand_table, e);
}
