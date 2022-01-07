
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typname; int nspname; } ;
typedef TYPE_1__ LogicalRepTyp ;


 int pfree (int ) ;

__attribute__((used)) static void
logicalrep_typmap_free_entry(LogicalRepTyp *entry)
{
 pfree(entry->nspname);
 pfree(entry->typname);
}
