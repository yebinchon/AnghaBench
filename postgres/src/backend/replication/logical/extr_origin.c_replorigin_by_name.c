
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int roident; } ;
typedef int RepOriginId ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_replication_origin ;
typedef int Datum ;


 int CStringGetTextDatum (char*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int REPLORIGNAME ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

RepOriginId
replorigin_by_name(char *roname, bool missing_ok)
{
 Form_pg_replication_origin ident;
 Oid roident = InvalidOid;
 HeapTuple tuple;
 Datum roname_d;

 roname_d = CStringGetTextDatum(roname);

 tuple = SearchSysCache1(REPLORIGNAME, roname_d);
 if (HeapTupleIsValid(tuple))
 {
  ident = (Form_pg_replication_origin) GETSTRUCT(tuple);
  roident = ident->roident;
  ReleaseSysCache(tuple);
 }
 else if (!missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("replication origin \"%s\" does not exist",
      roname)));

 return roident;
}
