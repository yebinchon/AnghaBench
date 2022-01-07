
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int subenabled; int subowner; int subname; int subdbid; } ;
struct TYPE_4__ {int publications; void* synccommit; int * slotname; void* conninfo; int enabled; int owner; void* name; int dbid; int oid; } ;
typedef TYPE_1__ Subscription ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_subscription ;
typedef int Datum ;


 int Anum_pg_subscription_subconninfo ;
 int Anum_pg_subscription_subpublications ;
 int Anum_pg_subscription_subslotname ;
 int Anum_pg_subscription_subsynccommit ;
 int Assert (int) ;
 int DatumGetArrayTypeP (int ) ;
 int * DatumGetName (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SUBSCRIPTIONOID ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 void* TextDatumGetCString (int ) ;
 int elog (int ,char*,int ) ;
 scalar_t__ palloc (int) ;
 void* pstrdup (int ) ;
 int textarray_to_stringlist (int ) ;

Subscription *
GetSubscription(Oid subid, bool missing_ok)
{
 HeapTuple tup;
 Subscription *sub;
 Form_pg_subscription subform;
 Datum datum;
 bool isnull;

 tup = SearchSysCache1(SUBSCRIPTIONOID, ObjectIdGetDatum(subid));

 if (!HeapTupleIsValid(tup))
 {
  if (missing_ok)
   return ((void*)0);

  elog(ERROR, "cache lookup failed for subscription %u", subid);
 }

 subform = (Form_pg_subscription) GETSTRUCT(tup);

 sub = (Subscription *) palloc(sizeof(Subscription));
 sub->oid = subid;
 sub->dbid = subform->subdbid;
 sub->name = pstrdup(NameStr(subform->subname));
 sub->owner = subform->subowner;
 sub->enabled = subform->subenabled;


 datum = SysCacheGetAttr(SUBSCRIPTIONOID,
       tup,
       Anum_pg_subscription_subconninfo,
       &isnull);
 Assert(!isnull);
 sub->conninfo = TextDatumGetCString(datum);


 datum = SysCacheGetAttr(SUBSCRIPTIONOID,
       tup,
       Anum_pg_subscription_subslotname,
       &isnull);
 if (!isnull)
  sub->slotname = pstrdup(NameStr(*DatumGetName(datum)));
 else
  sub->slotname = ((void*)0);


 datum = SysCacheGetAttr(SUBSCRIPTIONOID,
       tup,
       Anum_pg_subscription_subsynccommit,
       &isnull);
 Assert(!isnull);
 sub->synccommit = TextDatumGetCString(datum);


 datum = SysCacheGetAttr(SUBSCRIPTIONOID,
       tup,
       Anum_pg_subscription_subpublications,
       &isnull);
 Assert(!isnull);
 sub->publications = textarray_to_stringlist(DatumGetArrayTypeP(datum));

 ReleaseSysCache(tup);

 return sub;
}
