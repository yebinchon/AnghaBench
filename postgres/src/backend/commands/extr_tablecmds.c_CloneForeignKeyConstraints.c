
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int List ;


 int Assert (int) ;
 int CloneFkReferenced (TYPE_2__*,TYPE_2__*) ;
 int CloneFkReferencing (int **,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;

__attribute__((used)) static void
CloneForeignKeyConstraints(List **wqueue, Relation parentRel,
         Relation partitionRel)
{

 Assert(parentRel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE);




 CloneFkReferenced(parentRel, partitionRel);




 CloneFkReferencing(wqueue, parentRel, partitionRel);
}
