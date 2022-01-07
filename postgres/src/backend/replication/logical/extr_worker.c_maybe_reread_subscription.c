
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int subid; } ;
struct TYPE_6__ {scalar_t__ dbid; int synccommit; int name; int publications; int slotname; int conninfo; int enabled; } ;
typedef TYPE_1__ Subscription ;
typedef int MemoryContext ;


 int ApplyContext ;
 int Assert (int ) ;
 int CommitTransactionCommand () ;
 int ERROR ;
 int FreeSubscription (TYPE_1__*) ;
 TYPE_1__* GetSubscription (int ,int) ;
 int IsTransactionState () ;
 int LOG ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_3__* MyLogicalRepWorker ;
 TYPE_1__* MySubscription ;
 int MySubscriptionValid ;
 int PGC_BACKEND ;
 int PGC_S_OVERRIDE ;
 int SetConfigOption (char*,int ,int ,int ) ;
 int StartTransactionCommand () ;
 int elog (int ,char*,int ) ;
 int equal (int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int proc_exit (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
maybe_reread_subscription(void)
{
 MemoryContext oldctx;
 Subscription *newsub;
 bool started_tx = 0;


 if (MySubscriptionValid)
  return;


 if (!IsTransactionState())
 {
  StartTransactionCommand();
  started_tx = 1;
 }


 oldctx = MemoryContextSwitchTo(ApplyContext);

 newsub = GetSubscription(MyLogicalRepWorker->subid, 1);





 if (!newsub)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "stop because the subscription was removed",
      MySubscription->name)));

  proc_exit(0);
 }





 if (!newsub->enabled)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "stop because the subscription was disabled",
      MySubscription->name)));

  proc_exit(0);
 }





 if (strcmp(newsub->conninfo, MySubscription->conninfo) != 0)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "restart because the connection information was changed",
      MySubscription->name)));

  proc_exit(0);
 }





 if (strcmp(newsub->name, MySubscription->name) != 0)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "restart because subscription was renamed",
      MySubscription->name)));

  proc_exit(0);
 }


 Assert(newsub->slotname);





 if (strcmp(newsub->slotname, MySubscription->slotname) != 0)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "restart because the replication slot name was changed",
      MySubscription->name)));

  proc_exit(0);
 }





 if (!equal(newsub->publications, MySubscription->publications))
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will "
      "restart because subscription's publications were changed",
      MySubscription->name)));

  proc_exit(0);
 }


 if (newsub->dbid != MySubscription->dbid)
 {
  elog(ERROR, "subscription %u changed unexpectedly",
    MyLogicalRepWorker->subid);
 }


 FreeSubscription(MySubscription);
 MySubscription = newsub;

 MemoryContextSwitchTo(oldctx);


 SetConfigOption("synchronous_commit", MySubscription->synccommit,
     PGC_BACKEND, PGC_S_OVERRIDE);

 if (started_tx)
  CommitTransactionCommand();

 MySubscriptionValid = 1;
}
