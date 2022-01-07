
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_rel; } ;
typedef TYPE_1__* Relation ;


 int IsSystemClass (int ,int ) ;
 int RelationGetRelid (TYPE_1__*) ;

bool
IsSystemRelation(Relation relation)
{
 return IsSystemClass(RelationGetRelid(relation), relation->rd_rel);
}
