
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int dummy_nid ;
 int * engine_table_select (int *,int ) ;
 int rand_table ;

ENGINE *ENGINE_get_default_RAND(void)
{
    return engine_table_select(&rand_table, dummy_nid);
}
