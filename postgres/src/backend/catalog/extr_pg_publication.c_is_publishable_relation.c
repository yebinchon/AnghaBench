
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_rel; } ;
typedef TYPE_1__* Relation ;


 int RelationGetRelid (TYPE_1__*) ;
 int is_publishable_class (int ,int ) ;

bool
is_publishable_relation(Relation rel)
{
 return is_publishable_class(RelationGetRelid(rel), rel->rd_rel);
}
