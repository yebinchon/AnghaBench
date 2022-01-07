
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* values; } ;
struct TYPE_7__ {int pronargs; scalar_t__ prorettype; TYPE_1__ proargtypes; } ;
struct TYPE_6__ {scalar_t__ number; scalar_t__ lefttype; scalar_t__ righttype; int object; } ;
typedef TYPE_2__ OpFamilyMember ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_proc ;


 scalar_t__ BOOLOID ;
 scalar_t__ BTINRANGE_PROC ;
 scalar_t__ BTORDER_PROC ;
 scalar_t__ BTREE_AM_OID ;
 scalar_t__ BTSORTSUPPORT_PROC ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HASHEXTENDED_PROC ;
 scalar_t__ HASHSTANDARD_PROC ;
 scalar_t__ HASH_AM_OID ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ INT4OID ;
 scalar_t__ INT8OID ;
 scalar_t__ INTERNALOID ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (scalar_t__) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ VOIDOID ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
assignProcTypes(OpFamilyMember *member, Oid amoid, Oid typeoid)
{
 HeapTuple proctup;
 Form_pg_proc procform;


 proctup = SearchSysCache1(PROCOID, ObjectIdGetDatum(member->object));
 if (!HeapTupleIsValid(proctup))
  elog(ERROR, "cache lookup failed for function %u", member->object);
 procform = (Form_pg_proc) GETSTRUCT(proctup);
 if (amoid == BTREE_AM_OID)
 {
  if (member->number == BTORDER_PROC)
  {
   if (procform->pronargs != 2)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree comparison functions must have two arguments")));
   if (procform->prorettype != INT4OID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree comparison functions must return integer")));





   if (!OidIsValid(member->lefttype))
    member->lefttype = procform->proargtypes.values[0];
   if (!OidIsValid(member->righttype))
    member->righttype = procform->proargtypes.values[1];
  }
  else if (member->number == BTSORTSUPPORT_PROC)
  {
   if (procform->pronargs != 1 ||
    procform->proargtypes.values[0] != INTERNALOID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree sort support functions must accept type \"internal\"")));
   if (procform->prorettype != VOIDOID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree sort support functions must return void")));




  }
  else if (member->number == BTINRANGE_PROC)
  {
   if (procform->pronargs != 5)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree in_range functions must have five arguments")));
   if (procform->prorettype != BOOLOID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("btree in_range functions must return boolean")));





   if (!OidIsValid(member->lefttype))
    member->lefttype = procform->proargtypes.values[0];
   if (!OidIsValid(member->righttype))
    member->righttype = procform->proargtypes.values[2];
  }
 }
 else if (amoid == HASH_AM_OID)
 {
  if (member->number == HASHSTANDARD_PROC)
  {
   if (procform->pronargs != 1)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("hash function 1 must have one argument")));
   if (procform->prorettype != INT4OID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("hash function 1 must return integer")));
  }
  else if (member->number == HASHEXTENDED_PROC)
  {
   if (procform->pronargs != 2)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("hash function 2 must have two arguments")));
   if (procform->prorettype != INT8OID)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("hash function 2 must return bigint")));
  }




  if (!OidIsValid(member->lefttype))
   member->lefttype = procform->proargtypes.values[0];
  if (!OidIsValid(member->righttype))
   member->righttype = procform->proargtypes.values[0];
 }






 if (!OidIsValid(member->lefttype))
  member->lefttype = typeoid;
 if (!OidIsValid(member->righttype))
  member->righttype = typeoid;

 if (!OidIsValid(member->lefttype) || !OidIsValid(member->righttype))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("associated data types must be specified for index support function")));

 ReleaseSysCache(proctup);
}
