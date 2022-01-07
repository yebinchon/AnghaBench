
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int Acl ;


 int Anum_pg_default_acl_defaclacl ;
 int CharGetDatum (char) ;
 int DEFACLROLENSPOBJ ;
 int * DatumGetAclPCopy (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;

__attribute__((used)) static Acl *
get_default_acl_internal(Oid roleId, Oid nsp_oid, char objtype)
{
 Acl *result = ((void*)0);
 HeapTuple tuple;

 tuple = SearchSysCache3(DEFACLROLENSPOBJ,
       ObjectIdGetDatum(roleId),
       ObjectIdGetDatum(nsp_oid),
       CharGetDatum(objtype));

 if (HeapTupleIsValid(tuple))
 {
  Datum aclDatum;
  bool isNull;

  aclDatum = SysCacheGetAttr(DEFACLROLENSPOBJ, tuple,
           Anum_pg_default_acl_defaclacl,
           &isNull);
  if (!isNull)
   result = DatumGetAclPCopy(aclDatum);
  ReleaseSysCache(tuple);
 }

 return result;
}
