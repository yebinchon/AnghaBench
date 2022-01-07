
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DedupTable {int dummy; } ;


 int free (struct DedupTable*) ;

void
dedup_destroy(struct DedupTable *table)
{
    if (table)
        free(table);
}
