
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int dsa_table ;
 int dummy_nid ;
 int * engine_table_select (int *,int ) ;

ENGINE *ENGINE_get_default_DSA(void)
{
    return engine_table_select(&dsa_table, dummy_nid);
}
