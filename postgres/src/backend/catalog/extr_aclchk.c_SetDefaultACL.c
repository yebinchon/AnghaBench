
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
struct TYPE_22__ {int oid; } ;
struct TYPE_21__ {int t_self; } ;
struct TYPE_20__ {int objtype; int roleid; int nspid; int grantees; int behavior; int grant_option; int is_grant; int all_privs; int privileges; } ;
struct TYPE_19__ {scalar_t__ objectSubId; int objectId; void* classId; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ InternalDefaultACL ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_default_acl ;
typedef int Datum ;
typedef int AclMode ;
typedef int Acl ;


 int ACL_ALL_RIGHTS_FUNCTION ;
 int ACL_ALL_RIGHTS_RELATION ;
 int ACL_ALL_RIGHTS_SCHEMA ;
 int ACL_ALL_RIGHTS_SEQUENCE ;
 int ACL_ALL_RIGHTS_TYPE ;
 int ACL_NO_RIGHTS ;
 int Anum_pg_default_acl_defaclacl ;
 int Anum_pg_default_acl_defaclnamespace ;
 int Anum_pg_default_acl_defaclobjtype ;
 int Anum_pg_default_acl_defaclrole ;
 int Anum_pg_default_acl_oid ;
 int CatalogTupleInsert (int ,TYPE_3__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_3__*) ;
 int CharGetDatum (char) ;
 char DEFACLOBJ_FUNCTION ;
 char DEFACLOBJ_NAMESPACE ;
 char DEFACLOBJ_RELATION ;
 char DEFACLOBJ_SEQUENCE ;
 char DEFACLOBJ_TYPE ;
 int DEFACLROLENSPOBJ ;
 int DEPENDENCY_AUTO ;
 int DROP_RESTRICT ;
 int * DatumGetAclPCopy (int) ;
 int DefaultAclOidIndexId ;
 void* DefaultAclRelationId ;
 int ERRCODE_INVALID_GRANT_OPERATION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int GetNewOidWithIndex (int ,int ,int) ;
 scalar_t__ HeapTupleIsValid (TYPE_3__*) ;
 int InvokeObjectPostAlterHook (void*,int ,int ) ;
 int InvokeObjectPostCreateHook (void*,int ,int ) ;
 int MemSet (int*,int,int) ;
 void* NamespaceRelationId ;
 int Natts_pg_default_acl ;





 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_3__*) ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCache3 (int ,int,int,int) ;
 int SysCacheGetAttr (int ,TYPE_3__*,int,int*) ;
 int * aclcopy (int *) ;
 int * acldefault (int,int ) ;
 scalar_t__ aclequal (int *,int *) ;
 int aclitemsort (int *) ;
 int aclmembers (int *,int **) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_3__* heap_form_tuple (int ,int*,int*) ;
 TYPE_3__* heap_modify_tuple (TYPE_3__*,int ,int*,int*,int*) ;
 int * make_empty_acl () ;
 int * merge_acl_with_grant (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int performDeletion (TYPE_1__*,int ,int ) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnOwner (void*,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;
 int updateAclDependencies (void*,int ,int ,int ,int,int *,int,int *) ;

__attribute__((used)) static void
SetDefaultACL(InternalDefaultACL *iacls)
{
 AclMode this_privileges = iacls->privileges;
 char objtype;
 Relation rel;
 HeapTuple tuple;
 bool isNew;
 Acl *def_acl;
 Acl *old_acl;
 Acl *new_acl;
 HeapTuple newtuple;
 Datum values[Natts_pg_default_acl];
 bool nulls[Natts_pg_default_acl];
 bool replaces[Natts_pg_default_acl];
 int noldmembers;
 int nnewmembers;
 Oid *oldmembers;
 Oid *newmembers;

 rel = table_open(DefaultAclRelationId, RowExclusiveLock);







 if (!OidIsValid(iacls->nspid))
  def_acl = acldefault(iacls->objtype, iacls->roleid);
 else
  def_acl = make_empty_acl();





 switch (iacls->objtype)
 {
  case 129:
   objtype = DEFACLOBJ_RELATION;
   if (iacls->all_privs && this_privileges == ACL_NO_RIGHTS)
    this_privileges = ACL_ALL_RIGHTS_RELATION;
   break;

  case 130:
   objtype = DEFACLOBJ_SEQUENCE;
   if (iacls->all_privs && this_privileges == ACL_NO_RIGHTS)
    this_privileges = ACL_ALL_RIGHTS_SEQUENCE;
   break;

  case 132:
   objtype = DEFACLOBJ_FUNCTION;
   if (iacls->all_privs && this_privileges == ACL_NO_RIGHTS)
    this_privileges = ACL_ALL_RIGHTS_FUNCTION;
   break;

  case 128:
   objtype = DEFACLOBJ_TYPE;
   if (iacls->all_privs && this_privileges == ACL_NO_RIGHTS)
    this_privileges = ACL_ALL_RIGHTS_TYPE;
   break;

  case 131:
   if (OidIsValid(iacls->nspid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_GRANT_OPERATION),
       errmsg("cannot use IN SCHEMA clause when using GRANT/REVOKE ON SCHEMAS")));
   objtype = DEFACLOBJ_NAMESPACE;
   if (iacls->all_privs && this_privileges == ACL_NO_RIGHTS)
    this_privileges = ACL_ALL_RIGHTS_SCHEMA;
   break;

  default:
   elog(ERROR, "unrecognized objtype: %d",
     (int) iacls->objtype);
   objtype = 0;
   break;
 }


 tuple = SearchSysCache3(DEFACLROLENSPOBJ,
       ObjectIdGetDatum(iacls->roleid),
       ObjectIdGetDatum(iacls->nspid),
       CharGetDatum(objtype));

 if (HeapTupleIsValid(tuple))
 {
  Datum aclDatum;
  bool isNull;

  aclDatum = SysCacheGetAttr(DEFACLROLENSPOBJ, tuple,
           Anum_pg_default_acl_defaclacl,
           &isNull);
  if (!isNull)
   old_acl = DatumGetAclPCopy(aclDatum);
  else
   old_acl = ((void*)0);
  isNew = 0;
 }
 else
 {
  old_acl = ((void*)0);
  isNew = 1;
 }

 if (old_acl != ((void*)0))
 {





  noldmembers = aclmembers(old_acl, &oldmembers);
 }
 else
 {

  old_acl = aclcopy(def_acl);

  noldmembers = 0;
  oldmembers = ((void*)0);
 }





 new_acl = merge_acl_with_grant(old_acl,
           iacls->is_grant,
           iacls->grant_option,
           iacls->behavior,
           iacls->grantees,
           this_privileges,
           iacls->roleid,
           iacls->roleid);






 aclitemsort(new_acl);
 aclitemsort(def_acl);
 if (aclequal(new_acl, def_acl))
 {

  if (!isNew)
  {
   ObjectAddress myself;






   myself.classId = DefaultAclRelationId;
   myself.objectId = ((Form_pg_default_acl) GETSTRUCT(tuple))->oid;
   myself.objectSubId = 0;

   performDeletion(&myself, DROP_RESTRICT, 0);
  }
 }
 else
 {
  Oid defAclOid;


  MemSet(values, 0, sizeof(values));
  MemSet(nulls, 0, sizeof(nulls));
  MemSet(replaces, 0, sizeof(replaces));

  if (isNew)
  {

   defAclOid = GetNewOidWithIndex(rel, DefaultAclOidIndexId,
             Anum_pg_default_acl_oid);
   values[Anum_pg_default_acl_oid - 1] = ObjectIdGetDatum(defAclOid);
   values[Anum_pg_default_acl_defaclrole - 1] = ObjectIdGetDatum(iacls->roleid);
   values[Anum_pg_default_acl_defaclnamespace - 1] = ObjectIdGetDatum(iacls->nspid);
   values[Anum_pg_default_acl_defaclobjtype - 1] = CharGetDatum(objtype);
   values[Anum_pg_default_acl_defaclacl - 1] = PointerGetDatum(new_acl);

   newtuple = heap_form_tuple(RelationGetDescr(rel), values, nulls);
   CatalogTupleInsert(rel, newtuple);
  }
  else
  {
   defAclOid = ((Form_pg_default_acl) GETSTRUCT(tuple))->oid;


   values[Anum_pg_default_acl_defaclacl - 1] = PointerGetDatum(new_acl);
   replaces[Anum_pg_default_acl_defaclacl - 1] = 1;

   newtuple = heap_modify_tuple(tuple, RelationGetDescr(rel),
           values, nulls, replaces);
   CatalogTupleUpdate(rel, &newtuple->t_self, newtuple);
  }


  if (isNew)
  {

   recordDependencyOnOwner(DefaultAclRelationId, defAclOid,
         iacls->roleid);


   if (OidIsValid(iacls->nspid))
   {
    ObjectAddress myself,
       referenced;

    myself.classId = DefaultAclRelationId;
    myself.objectId = defAclOid;
    myself.objectSubId = 0;

    referenced.classId = NamespaceRelationId;
    referenced.objectId = iacls->nspid;
    referenced.objectSubId = 0;

    recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);
   }
  }




  nnewmembers = aclmembers(new_acl, &newmembers);

  updateAclDependencies(DefaultAclRelationId,
         defAclOid, 0,
         iacls->roleid,
         noldmembers, oldmembers,
         nnewmembers, newmembers);

  if (isNew)
   InvokeObjectPostCreateHook(DefaultAclRelationId, defAclOid, 0);
  else
   InvokeObjectPostAlterHook(DefaultAclRelationId, defAclOid, 0);
 }

 if (HeapTupleIsValid(tuple))
  ReleaseSysCache(tuple);

 table_close(rel, RowExclusiveLock);
}
