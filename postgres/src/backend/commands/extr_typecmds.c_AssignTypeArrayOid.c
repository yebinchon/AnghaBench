
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_pg_type_oid ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int GetNewOidWithIndex (int ,int ,int ) ;
 int InvalidOid ;
 scalar_t__ IsBinaryUpgrade ;
 int OidIsValid (int ) ;
 int TypeOidIndexId ;
 int TypeRelationId ;
 int binary_upgrade_next_array_pg_type_oid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
AssignTypeArrayOid(void)
{
 Oid type_array_oid;


 if (IsBinaryUpgrade)
 {
  if (!OidIsValid(binary_upgrade_next_array_pg_type_oid))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("pg_type array OID value not set when in binary upgrade mode")));

  type_array_oid = binary_upgrade_next_array_pg_type_oid;
  binary_upgrade_next_array_pg_type_oid = InvalidOid;
 }
 else
 {
  Relation pg_type = table_open(TypeRelationId, AccessShareLock);

  type_array_oid = GetNewOidWithIndex(pg_type, TypeOidIndexId,
           Anum_pg_type_oid);
  table_close(pg_type, AccessShareLock);
 }

 return type_array_oid;
}
