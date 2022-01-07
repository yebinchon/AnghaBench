
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int srsublsn; int srsubstate; int srrelid; } ;
struct TYPE_4__ {int lsn; int state; int relid; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ SubscriptionRelState ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_subscription_rel ;


 int AccessShareLock ;
 int Anum_pg_subscription_rel_srsubid ;
 int Anum_pg_subscription_rel_srsubstate ;
 int BTEqualStrategyNumber ;
 int CharGetDatum (int ) ;
 int F_CHARNE ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int SUBREL_STATE_READY ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SubscriptionRelRelationId ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
GetSubscriptionNotReadyRelations(Oid subid)
{
 List *res = NIL;
 Relation rel;
 HeapTuple tup;
 int nkeys = 0;
 ScanKeyData skey[2];
 SysScanDesc scan;

 rel = table_open(SubscriptionRelRelationId, AccessShareLock);

 ScanKeyInit(&skey[nkeys++],
    Anum_pg_subscription_rel_srsubid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(subid));

 ScanKeyInit(&skey[nkeys++],
    Anum_pg_subscription_rel_srsubstate,
    BTEqualStrategyNumber, F_CHARNE,
    CharGetDatum(SUBREL_STATE_READY));

 scan = systable_beginscan(rel, InvalidOid, 0,
         ((void*)0), nkeys, skey);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_subscription_rel subrel;
  SubscriptionRelState *relstate;

  subrel = (Form_pg_subscription_rel) GETSTRUCT(tup);

  relstate = (SubscriptionRelState *) palloc(sizeof(SubscriptionRelState));
  relstate->relid = subrel->srrelid;
  relstate->state = subrel->srsubstate;
  relstate->lsn = subrel->srsublsn;

  res = lappend(res, relstate);
 }


 systable_endscan(scan);
 table_close(rel, AccessShareLock);

 return res;
}
