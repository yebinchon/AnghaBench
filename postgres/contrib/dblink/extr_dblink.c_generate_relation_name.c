
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int relnamespace; } ;
typedef TYPE_2__* Relation ;


 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 scalar_t__ RelationIsVisible (int ) ;
 char* get_namespace_name (int ) ;
 char* quote_qualified_identifier (char*,int ) ;

__attribute__((used)) static char *
generate_relation_name(Relation rel)
{
 char *nspname;
 char *result;


 if (RelationIsVisible(RelationGetRelid(rel)))
  nspname = ((void*)0);
 else
  nspname = get_namespace_name(rel->rd_rel->relnamespace);

 result = quote_qualified_identifier(nspname, RelationGetRelationName(rel));

 return result;
}
