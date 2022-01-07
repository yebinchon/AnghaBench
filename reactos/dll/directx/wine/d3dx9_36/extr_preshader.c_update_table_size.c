
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PRES_REGTAB_COUNT ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static void update_table_size(unsigned int *table_sizes, unsigned int table, unsigned int max_register)
{
    if (table < PRES_REGTAB_COUNT)
        table_sizes[table] = max(table_sizes[table], max_register + 1);
}
