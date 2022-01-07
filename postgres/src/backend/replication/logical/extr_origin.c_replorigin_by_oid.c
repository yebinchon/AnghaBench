
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int roname; } ;
typedef scalar_t__ RepOriginId ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_replication_origin ;


 int Assert (int) ;
 scalar_t__ DoNotReplicateId ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ InvalidRepOriginId ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int REPLORIGIDENT ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 char* text_to_cstring (int *) ;

bool
replorigin_by_oid(RepOriginId roident, bool missing_ok, char **roname)
{
 HeapTuple tuple;
 Form_pg_replication_origin ric;

 Assert(OidIsValid((Oid) roident));
 Assert(roident != InvalidRepOriginId);
 Assert(roident != DoNotReplicateId);

 tuple = SearchSysCache1(REPLORIGIDENT,
       ObjectIdGetDatum((Oid) roident));

 if (HeapTupleIsValid(tuple))
 {
  ric = (Form_pg_replication_origin) GETSTRUCT(tuple);
  *roname = text_to_cstring(&ric->roname);
  ReleaseSysCache(tuple);

  return 1;
 }
 else
 {
  *roname = ((void*)0);

  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("replication origin with OID %u does not exist",
       roident)));

  return 0;
 }
}
