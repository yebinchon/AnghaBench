
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dead_end; int bgworker_notify; int child_slot; int bkend_type; int cancel_key; } ;
struct TYPE_5__ {int rw_child_slot; TYPE_2__* rw_backend; } ;
typedef TYPE_1__ RegisteredBgWorker ;
typedef TYPE_2__ Backend ;


 int AssignPostmasterChildSlot () ;
 int BACKEND_TYPE_BGWORKER ;
 scalar_t__ CAC_OK ;
 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_OUT_OF_MEMORY ;
 int LOG ;
 int MyCancelKey ;
 int MyPMChildSlot ;
 int RandomCancelKey (int *) ;
 scalar_t__ canAcceptConnections (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static bool
assign_backendlist_entry(RegisteredBgWorker *rw)
{
 Backend *bn;






 if (canAcceptConnections(BACKEND_TYPE_BGWORKER) != CAC_OK)
 {
  ereport(LOG,
    (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
     errmsg("no slot available for new worker process")));
  return 0;
 }







 if (!RandomCancelKey(&MyCancelKey))
 {
  ereport(LOG,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not generate random cancel key")));
  return 0;
 }

 bn = malloc(sizeof(Backend));
 if (bn == ((void*)0))
 {
  ereport(LOG,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
  return 0;
 }

 bn->cancel_key = MyCancelKey;
 bn->child_slot = MyPMChildSlot = AssignPostmasterChildSlot();
 bn->bkend_type = BACKEND_TYPE_BGWORKER;
 bn->dead_end = 0;
 bn->bgworker_notify = 0;

 rw->rw_backend = bn;
 rw->rw_child_slot = bn->child_slot;

 return 1;
}
