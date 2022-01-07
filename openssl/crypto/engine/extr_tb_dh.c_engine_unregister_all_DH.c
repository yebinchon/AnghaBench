
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dh_table ;
 int engine_table_cleanup (int *) ;

__attribute__((used)) static void engine_unregister_all_DH(void)
{
    engine_table_cleanup(&dh_table);
}
