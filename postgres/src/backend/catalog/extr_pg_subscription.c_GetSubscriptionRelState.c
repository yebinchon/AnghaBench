
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_subscription_rel_srsublsn ;
 int Anum_pg_subscription_rel_srsubstate ;
 int Assert (int) ;
 char DatumGetChar (int ) ;
 int DatumGetLSN (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int InvalidXLogRecPtr ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 char SUBREL_STATE_UNKNOWN ;
 int SUBSCRIPTIONRELMAP ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SubscriptionRelRelationId ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

char
GetSubscriptionRelState(Oid subid, Oid relid, XLogRecPtr *sublsn,
      bool missing_ok)
{
 Relation rel;
 HeapTuple tup;
 char substate;
 bool isnull;
 Datum d;

 rel = table_open(SubscriptionRelRelationId, AccessShareLock);


 tup = SearchSysCache2(SUBSCRIPTIONRELMAP,
        ObjectIdGetDatum(relid),
        ObjectIdGetDatum(subid));

 if (!HeapTupleIsValid(tup))
 {
  if (missing_ok)
  {
   table_close(rel, AccessShareLock);
   *sublsn = InvalidXLogRecPtr;
   return SUBREL_STATE_UNKNOWN;
  }

  elog(ERROR, "subscription table %u in subscription %u does not exist",
    relid, subid);
 }


 d = SysCacheGetAttr(SUBSCRIPTIONRELMAP, tup,
      Anum_pg_subscription_rel_srsubstate, &isnull);
 Assert(!isnull);
 substate = DatumGetChar(d);
 d = SysCacheGetAttr(SUBSCRIPTIONRELMAP, tup,
      Anum_pg_subscription_rel_srsublsn, &isnull);
 if (isnull)
  *sublsn = InvalidXLogRecPtr;
 else
  *sublsn = DatumGetLSN(d);


 ReleaseSysCache(tup);
 table_close(rel, AccessShareLock);

 return substate;
}
