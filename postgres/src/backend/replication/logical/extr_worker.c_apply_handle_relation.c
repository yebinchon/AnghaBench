
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int LogicalRepRelation ;


 int * logicalrep_read_rel (int ) ;
 int logicalrep_relmap_update (int *) ;

__attribute__((used)) static void
apply_handle_relation(StringInfo s)
{
 LogicalRepRelation *rel;

 rel = logicalrep_read_rel(s);
 logicalrep_relmap_update(rel);
}
