
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
struct TYPE_18__ {char* subname; int kind; char* conninfo; int options; int publication; } ;
struct TYPE_17__ {int oid; } ;
struct TYPE_16__ {int t_self; } ;
struct TYPE_15__ {int enabled; int publications; int slotname; } ;
typedef TYPE_1__ Subscription ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_subscription ;
typedef int Datum ;
typedef TYPE_4__ AlterSubscriptionStmt ;


 int ACLCHECK_NOT_OWNER ;





 int AccessExclusiveLock ;
 int AlterSubscription_refresh (TYPE_1__*,int) ;
 int Anum_pg_subscription_subconninfo ;
 int Anum_pg_subscription_subenabled ;
 int Anum_pg_subscription_subpublications ;
 int Anum_pg_subscription_subslotname ;
 int Anum_pg_subscription_subsynccommit ;
 int ApplyLauncherWakeupAtCommit () ;
 int Assert (int) ;
 int BoolGetDatum (int) ;
 int CStringGetDatum (char*) ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 TYPE_1__* GetSubscription (int ,int) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int LockSharedObject (int ,int ,int ,int ) ;
 int MyDatabaseId ;
 int Natts_pg_subscription ;
 int OBJECT_SUBSCRIPTION ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int SUBSCRIPTIONNAME ;
 TYPE_2__* SearchSysCacheCopy2 (int ,int ,int ) ;
 int SubscriptionRelationId ;
 int aclcheck_error (int ,int ,char*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int load_file (char*,int) ;
 int memset (int*,int,int) ;
 int namein ;
 int parse_subscription_options (int ,int *,int*,int*,int *,int*,char**,int*,char**,int*) ;
 int pg_subscription_ownercheck (int ,int ) ;
 int publicationListToArray (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int walrcv_check_conninfo (char*) ;

ObjectAddress
AlterSubscription(AlterSubscriptionStmt *stmt)
{
 Relation rel;
 ObjectAddress myself;
 bool nulls[Natts_pg_subscription];
 bool replaces[Natts_pg_subscription];
 Datum values[Natts_pg_subscription];
 HeapTuple tup;
 Oid subid;
 bool update_tuple = 0;
 Subscription *sub;
 Form_pg_subscription form;

 rel = table_open(SubscriptionRelationId, RowExclusiveLock);


 tup = SearchSysCacheCopy2(SUBSCRIPTIONNAME, MyDatabaseId,
         CStringGetDatum(stmt->subname));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("subscription \"%s\" does not exist",
      stmt->subname)));

 form = (Form_pg_subscription) GETSTRUCT(tup);
 subid = form->oid;


 if (!pg_subscription_ownercheck(subid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_SUBSCRIPTION,
        stmt->subname);

 sub = GetSubscription(subid, 0);


 LockSharedObject(SubscriptionRelationId, subid, 0, AccessExclusiveLock);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));
 memset(replaces, 0, sizeof(replaces));

 switch (stmt->kind)
 {
  case 130:
   {
    char *slotname;
    bool slotname_given;
    char *synchronous_commit;

    parse_subscription_options(stmt->options, ((void*)0), ((void*)0), ((void*)0),
             ((void*)0), &slotname_given, &slotname,
             ((void*)0), &synchronous_commit, ((void*)0));

    if (slotname_given)
    {
     if (sub->enabled && !slotname)
      ereport(ERROR,
        (errcode(ERRCODE_SYNTAX_ERROR),
         errmsg("cannot set %s for enabled subscription",
          "slot_name = NONE")));

     if (slotname)
      values[Anum_pg_subscription_subslotname - 1] =
       DirectFunctionCall1(namein, CStringGetDatum(slotname));
     else
      nulls[Anum_pg_subscription_subslotname - 1] = 1;
     replaces[Anum_pg_subscription_subslotname - 1] = 1;
    }

    if (synchronous_commit)
    {
     values[Anum_pg_subscription_subsynccommit - 1] =
      CStringGetTextDatum(synchronous_commit);
     replaces[Anum_pg_subscription_subsynccommit - 1] = 1;
    }

    update_tuple = 1;
    break;
   }

  case 131:
   {
    bool enabled,
       enabled_given;

    parse_subscription_options(stmt->options, ((void*)0),
             &enabled_given, &enabled, ((void*)0),
             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    Assert(enabled_given);

    if (!sub->slotname && enabled)
     ereport(ERROR,
       (errcode(ERRCODE_SYNTAX_ERROR),
        errmsg("cannot enable subscription that does not have a slot name")));

    values[Anum_pg_subscription_subenabled - 1] =
     BoolGetDatum(enabled);
    replaces[Anum_pg_subscription_subenabled - 1] = 1;

    if (enabled)
     ApplyLauncherWakeupAtCommit();

    update_tuple = 1;
    break;
   }

  case 132:

   load_file("libpqwalreceiver", 0);

   walrcv_check_conninfo(stmt->conninfo);

   values[Anum_pg_subscription_subconninfo - 1] =
    CStringGetTextDatum(stmt->conninfo);
   replaces[Anum_pg_subscription_subconninfo - 1] = 1;
   update_tuple = 1;
   break;

  case 129:
   {
    bool copy_data;
    bool refresh;

    parse_subscription_options(stmt->options, ((void*)0), ((void*)0), ((void*)0),
             ((void*)0), ((void*)0), ((void*)0), &copy_data,
             ((void*)0), &refresh);

    values[Anum_pg_subscription_subpublications - 1] =
     publicationListToArray(stmt->publication);
    replaces[Anum_pg_subscription_subpublications - 1] = 1;

    update_tuple = 1;


    if (refresh)
    {
     if (!sub->enabled)
      ereport(ERROR,
        (errcode(ERRCODE_SYNTAX_ERROR),
         errmsg("ALTER SUBSCRIPTION with refresh is not allowed for disabled subscriptions"),
         errhint("Use ALTER SUBSCRIPTION ... SET PUBLICATION ... WITH (refresh = false).")));


     sub->publications = stmt->publication;

     AlterSubscription_refresh(sub, copy_data);
    }

    break;
   }

  case 128:
   {
    bool copy_data;

    if (!sub->enabled)
     ereport(ERROR,
       (errcode(ERRCODE_SYNTAX_ERROR),
        errmsg("ALTER SUBSCRIPTION ... REFRESH is not allowed for disabled subscriptions")));

    parse_subscription_options(stmt->options, ((void*)0), ((void*)0), ((void*)0),
             ((void*)0), ((void*)0), ((void*)0), &copy_data,
             ((void*)0), ((void*)0));

    AlterSubscription_refresh(sub, copy_data);

    break;
   }

  default:
   elog(ERROR, "unrecognized ALTER SUBSCRIPTION kind %d",
     stmt->kind);
 }


 if (update_tuple)
 {
  tup = heap_modify_tuple(tup, RelationGetDescr(rel), values, nulls,
        replaces);

  CatalogTupleUpdate(rel, &tup->t_self, tup);

  heap_freetuple(tup);
 }

 table_close(rel, RowExclusiveLock);

 ObjectAddressSet(myself, SubscriptionRelationId, subid);

 InvokeObjectPostAlterHook(SubscriptionRelationId, subid, 0);

 return myself;
}
