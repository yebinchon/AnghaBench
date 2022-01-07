
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * localrel; } ;
typedef TYPE_1__ LogicalRepRelMapEntry ;
typedef int LOCKMODE ;


 int table_close (int *,int ) ;

void
logicalrep_rel_close(LogicalRepRelMapEntry *rel, LOCKMODE lockmode)
{
 table_close(rel->localrel, lockmode);
 rel->localrel = ((void*)0);
}
