
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
struct TYPE_15__ {int attname; } ;
struct TYPE_14__ {int t_self; } ;
struct TYPE_13__ {int grantees; int behavior; int grant_option; int is_grant; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ InternalGrant ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;
typedef int AttrNumber ;
typedef int AclMode ;
typedef int Acl ;


 int ACL_ALL_RIGHTS_COLUMN ;
 scalar_t__ ACL_NUM (int *) ;
 int ATTNUM ;
 int Anum_pg_attribute_attacl ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int * DatumGetAclPCopy (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int Int16GetDatum (int ) ;
 int MemSet (int*,int,int) ;
 int NameStr (int ) ;
 int Natts_pg_attribute ;
 int OBJECT_COLUMN ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_2__*) ;
 TYPE_2__* SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int * aclconcat (int const*,int *) ;
 int * acldefault (int ,int ) ;
 int aclmembers (int *,int **) ;
 int elog (int ,char*,int ,int ) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int * merge_acl_with_grant (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int pfree (int *) ;
 int recordExtensionInitPriv (int ,int ,int ,int *) ;
 int restrict_and_check_grant (int ,int ,int,int ,int ,int ,int ,char const*,int ,int ) ;
 int select_best_grantor (int ,int ,int *,int ,int *,int *) ;
 int updateAclDependencies (int ,int ,int ,int ,int,int *,int,int *) ;

__attribute__((used)) static void
ExecGrant_Attribute(InternalGrant *istmt, Oid relOid, const char *relname,
     AttrNumber attnum, Oid ownerId, AclMode col_privileges,
     Relation attRelation, const Acl *old_rel_acl)
{
 HeapTuple attr_tuple;
 Form_pg_attribute pg_attribute_tuple;
 Acl *old_acl;
 Acl *new_acl;
 Acl *merged_acl;
 Datum aclDatum;
 bool isNull;
 Oid grantorId;
 AclMode avail_goptions;
 bool need_update;
 HeapTuple newtuple;
 Datum values[Natts_pg_attribute];
 bool nulls[Natts_pg_attribute];
 bool replaces[Natts_pg_attribute];
 int noldmembers;
 int nnewmembers;
 Oid *oldmembers;
 Oid *newmembers;

 attr_tuple = SearchSysCache2(ATTNUM,
         ObjectIdGetDatum(relOid),
         Int16GetDatum(attnum));
 if (!HeapTupleIsValid(attr_tuple))
  elog(ERROR, "cache lookup failed for attribute %d of relation %u",
    attnum, relOid);
 pg_attribute_tuple = (Form_pg_attribute) GETSTRUCT(attr_tuple);





 aclDatum = SysCacheGetAttr(ATTNUM, attr_tuple, Anum_pg_attribute_attacl,
          &isNull);
 if (isNull)
 {
  old_acl = acldefault(OBJECT_COLUMN, ownerId);

  noldmembers = 0;
  oldmembers = ((void*)0);
 }
 else
 {
  old_acl = DatumGetAclPCopy(aclDatum);

  noldmembers = aclmembers(old_acl, &oldmembers);
 }







 merged_acl = aclconcat(old_rel_acl, old_acl);


 select_best_grantor(GetUserId(), col_privileges,
      merged_acl, ownerId,
      &grantorId, &avail_goptions);

 pfree(merged_acl);
 col_privileges =
  restrict_and_check_grant(istmt->is_grant, avail_goptions,
         (col_privileges == ACL_ALL_RIGHTS_COLUMN),
         col_privileges,
         relOid, grantorId, OBJECT_COLUMN,
         relname, attnum,
         NameStr(pg_attribute_tuple->attname));




 new_acl = merge_acl_with_grant(old_acl, istmt->is_grant,
           istmt->grant_option,
           istmt->behavior, istmt->grantees,
           col_privileges, grantorId,
           ownerId);





 nnewmembers = aclmembers(new_acl, &newmembers);


 MemSet(values, 0, sizeof(values));
 MemSet(nulls, 0, sizeof(nulls));
 MemSet(replaces, 0, sizeof(replaces));
 if (ACL_NUM(new_acl) > 0)
 {
  values[Anum_pg_attribute_attacl - 1] = PointerGetDatum(new_acl);
  need_update = 1;
 }
 else
 {
  nulls[Anum_pg_attribute_attacl - 1] = 1;
  need_update = !isNull;
 }
 replaces[Anum_pg_attribute_attacl - 1] = 1;

 if (need_update)
 {
  newtuple = heap_modify_tuple(attr_tuple, RelationGetDescr(attRelation),
          values, nulls, replaces);

  CatalogTupleUpdate(attRelation, &newtuple->t_self, newtuple);


  recordExtensionInitPriv(relOid, RelationRelationId, attnum,
        ACL_NUM(new_acl) > 0 ? new_acl : ((void*)0));


  updateAclDependencies(RelationRelationId, relOid, attnum,
         ownerId,
         noldmembers, oldmembers,
         nnewmembers, newmembers);
 }

 pfree(new_acl);

 ReleaseSysCache(attr_tuple);
}
