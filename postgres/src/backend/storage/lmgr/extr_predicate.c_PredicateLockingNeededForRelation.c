
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rd_id; TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;


 scalar_t__ FirstBootstrapObjectId ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RelationUsesLocalBuffers (TYPE_2__*) ;

__attribute__((used)) static inline bool
PredicateLockingNeededForRelation(Relation relation)
{
 return !(relation->rd_id < FirstBootstrapObjectId ||
    RelationUsesLocalBuffers(relation) ||
    relation->rd_rel->relkind == RELKIND_MATVIEW);
}
