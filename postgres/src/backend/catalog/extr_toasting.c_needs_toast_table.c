
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
typedef TYPE_2__* Relation ;


 int IsBootstrapProcessingMode () ;
 scalar_t__ IsCatalogRelation (TYPE_2__*) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int table_relation_needs_toast_table (TYPE_2__*) ;

__attribute__((used)) static bool
needs_toast_table(Relation rel)
{



 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  return 0;





 if (rel->rd_rel->relisshared && !IsBootstrapProcessingMode())
  return 0;







 if (IsCatalogRelation(rel) && !IsBootstrapProcessingMode())
  return 0;


 return table_relation_needs_toast_table(rel);
}
