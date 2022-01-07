
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_3__ {scalar_t__* values; } ;
struct TYPE_4__ {scalar_t__ prorettype; int pronargs; TYPE_1__ proargtypes; scalar_t__ proretset; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 scalar_t__ BOOLOID ;
 scalar_t__ BYTEAOID ;
 scalar_t__ CIDOID ;
 scalar_t__ DATEOID ;
 int ERROR ;
 scalar_t__ F_HASHCHAR ;
 scalar_t__ F_HASHCHAREXTENDED ;
 scalar_t__ F_HASHINT4 ;
 scalar_t__ F_HASHINT4EXTENDED ;
 scalar_t__ F_HASHVARLENA ;
 scalar_t__ F_HASHVARLENAEXTENDED ;
 scalar_t__ F_TIMESTAMP_HASH ;
 scalar_t__ F_TIMESTAMP_HASH_EXTENDED ;
 scalar_t__ GETSTRUCT (int ) ;


 int HeapTupleIsValid (int ) ;
 scalar_t__ INT4OID ;
 scalar_t__ INT8OID ;
 int IsBinaryCoercible (scalar_t__,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ TIMESTAMPTZOID ;
 scalar_t__ XIDOID ;
 int elog (int ,char*,...) ;

__attribute__((used)) static bool
check_hash_func_signature(Oid funcid, int16 amprocnum, Oid argtype)
{
 bool result = 1;
 Oid restype;
 int16 nargs;
 HeapTuple tp;
 Form_pg_proc procform;

 switch (amprocnum)
 {
  case 128:
   restype = INT4OID;
   nargs = 1;
   break;

  case 129:
   restype = INT8OID;
   nargs = 2;
   break;

  default:
   elog(ERROR, "invalid amprocnum");
 }

 tp = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 procform = (Form_pg_proc) GETSTRUCT(tp);

 if (procform->prorettype != restype || procform->proretset ||
  procform->pronargs != nargs)
  result = 0;

 if (!IsBinaryCoercible(argtype, procform->proargtypes.values[0]))
 {
  if ((funcid == F_HASHINT4 || funcid == F_HASHINT4EXTENDED) &&
   (argtype == DATEOID ||
    argtype == XIDOID || argtype == CIDOID))
                                          ;
  else if ((funcid == F_TIMESTAMP_HASH ||
      funcid == F_TIMESTAMP_HASH_EXTENDED) &&
     argtype == TIMESTAMPTZOID)
                                                ;
  else if ((funcid == F_HASHCHAR || funcid == F_HASHCHAREXTENDED) &&
     argtype == BOOLOID)
                                          ;
  else if ((funcid == F_HASHVARLENA || funcid == F_HASHVARLENAEXTENDED) &&
     argtype == BYTEAOID)
                                             ;
  else
   result = 0;
 }


 if (nargs == 2 && procform->proargtypes.values[1] != INT8OID)
  result = 0;

 ReleaseSysCache(tp);
 return result;
}
