
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int text ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int LOCKMODE ;
typedef scalar_t__ AclResult ;
typedef int AclMode ;


 scalar_t__ ACLCHECK_OK ;
 int GetUserId () ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int get_relkind_objtype (int ) ;
 int * makeRangeVarFromNameList (int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;
 TYPE_2__* table_openrv (int *,int ) ;
 int textToQualifiedNameList (int *) ;

__attribute__((used)) static Relation
get_rel_from_relname(text *relname_text, LOCKMODE lockmode, AclMode aclmode)
{
 RangeVar *relvar;
 Relation rel;
 AclResult aclresult;

 relvar = makeRangeVarFromNameList(textToQualifiedNameList(relname_text));
 rel = table_openrv(relvar, lockmode);

 aclresult = pg_class_aclcheck(RelationGetRelid(rel), GetUserId(),
          aclmode);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, get_relkind_objtype(rel->rd_rel->relkind),
        RelationGetRelationName(rel));

 return rel;
}
