
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_REFERENCES ;
 int GetUserId () ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int get_relkind_objtype (int ) ;
 scalar_t__ pg_attribute_aclcheck (int ,int ,int ,int ) ;
 scalar_t__ pg_class_aclcheck (int ,int ,int ) ;

__attribute__((used)) static void
checkFkeyPermissions(Relation rel, int16 *attnums, int natts)
{
 Oid roleid = GetUserId();
 AclResult aclresult;
 int i;


 aclresult = pg_class_aclcheck(RelationGetRelid(rel), roleid,
          ACL_REFERENCES);
 if (aclresult == ACLCHECK_OK)
  return;

 for (i = 0; i < natts; i++)
 {
  aclresult = pg_attribute_aclcheck(RelationGetRelid(rel), attnums[i],
            roleid, ACL_REFERENCES);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, get_relkind_objtype(rel->rd_rel->relkind),
         RelationGetRelationName(rel));
 }
}
