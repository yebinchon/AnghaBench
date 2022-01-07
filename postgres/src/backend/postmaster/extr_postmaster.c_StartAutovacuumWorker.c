
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dead_end; int bgworker_notify; scalar_t__ pid; int child_slot; int elem; int bkend_type; int cancel_key; } ;
typedef TYPE_1__ Backend ;


 int AssignPostmasterChildSlot () ;
 scalar_t__ AutoVacPID ;
 int AutoVacWorkerFailed () ;
 int BACKEND_TYPE_AUTOVAC ;
 int BackendList ;
 scalar_t__ CAC_OK ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_OUT_OF_MEMORY ;
 int LOG ;
 int MyCancelKey ;
 int MyPMChildSlot ;
 int RandomCancelKey (int *) ;
 int ReleasePostmasterChildSlot (int ) ;
 int ShmemBackendArrayAdd (TYPE_1__*) ;
 scalar_t__ StartAutoVacWorker () ;
 int avlauncher_needs_signal ;
 scalar_t__ canAcceptConnections (int ) ;
 int dlist_push_head (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void
StartAutovacuumWorker(void)
{
 Backend *bn;
 if (canAcceptConnections(BACKEND_TYPE_AUTOVAC) == CAC_OK)
 {






  if (!RandomCancelKey(&MyCancelKey))
  {
   ereport(LOG,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("could not generate random cancel key")));
   return;
  }

  bn = (Backend *) malloc(sizeof(Backend));
  if (bn)
  {
   bn->cancel_key = MyCancelKey;


   bn->dead_end = 0;
   bn->child_slot = MyPMChildSlot = AssignPostmasterChildSlot();
   bn->bgworker_notify = 0;

   bn->pid = StartAutoVacWorker();
   if (bn->pid > 0)
   {
    bn->bkend_type = BACKEND_TYPE_AUTOVAC;
    dlist_push_head(&BackendList, &bn->elem);




    return;
   }





   (void) ReleasePostmasterChildSlot(bn->child_slot);
   free(bn);
  }
  else
   ereport(LOG,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
 }
 if (AutoVacPID != 0)
 {
  AutoVacWorkerFailed();
  avlauncher_needs_signal = 1;
 }
}
