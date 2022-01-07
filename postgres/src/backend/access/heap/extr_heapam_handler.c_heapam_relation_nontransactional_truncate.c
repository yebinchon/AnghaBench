
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int RelationTruncate (int ,int ) ;

__attribute__((used)) static void
heapam_relation_nontransactional_truncate(Relation rel)
{
 RelationTruncate(rel, 0);
}
