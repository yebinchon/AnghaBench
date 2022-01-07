
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_11__ {int dead_end; int bgworker_notify; int elem; int bkend_type; scalar_t__ pid; scalar_t__ child_slot; int cancel_key; } ;
struct TYPE_10__ {scalar_t__ canAcceptConnections; scalar_t__ sock; } ;
typedef TYPE_1__ Port ;
typedef TYPE_2__ Backend ;


 scalar_t__ AssignPostmasterChildSlot () ;
 int BACKEND_TYPE_NORMAL ;
 int BackendInitialize (TYPE_1__*) ;
 int BackendList ;
 int BackendRun (TYPE_1__*) ;
 scalar_t__ CAC_OK ;
 scalar_t__ CAC_WAITBACKUP ;
 int ClosePostmasterPorts (int) ;
 int DEBUG2 ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_OUT_OF_MEMORY ;
 int InitPostmasterChild () ;
 int LOG ;
 int MyCancelKey ;
 scalar_t__ MyPMChildSlot ;
 int RandomCancelKey (int *) ;
 int ReleasePostmasterChildSlot (scalar_t__) ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int ShmemBackendArrayAdd (TYPE_2__*) ;
 scalar_t__ backend_forkexec (TYPE_1__*) ;
 scalar_t__ canAcceptConnections (int ) ;
 int dlist_push_head (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errmsg_internal (char*,int,int) ;
 int errno ;
 scalar_t__ fork_process () ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int report_fork_failure_to_client (TYPE_1__*,int) ;

__attribute__((used)) static int
BackendStartup(Port *port)
{
 Backend *bn;
 pid_t pid;





 bn = (Backend *) malloc(sizeof(Backend));
 if (!bn)
 {
  ereport(LOG,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
  return STATUS_ERROR;
 }






 if (!RandomCancelKey(&MyCancelKey))
 {
  free(bn);
  ereport(LOG,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not generate random cancel key")));
  return STATUS_ERROR;
 }

 bn->cancel_key = MyCancelKey;


 port->canAcceptConnections = canAcceptConnections(BACKEND_TYPE_NORMAL);
 bn->dead_end = (port->canAcceptConnections != CAC_OK &&
     port->canAcceptConnections != CAC_WAITBACKUP);




 if (!bn->dead_end)
  bn->child_slot = MyPMChildSlot = AssignPostmasterChildSlot();
 else
  bn->child_slot = 0;


 bn->bgworker_notify = 0;




 pid = fork_process();
 if (pid == 0)
 {
  free(bn);


  InitPostmasterChild();


  ClosePostmasterPorts(0);


  BackendInitialize(port);


  BackendRun(port);
 }


 if (pid < 0)
 {

  int save_errno = errno;

  if (!bn->dead_end)
   (void) ReleasePostmasterChildSlot(bn->child_slot);
  free(bn);
  errno = save_errno;
  ereport(LOG,
    (errmsg("could not fork new process for connection: %m")));
  report_fork_failure_to_client(port, save_errno);
  return STATUS_ERROR;
 }


 ereport(DEBUG2,
   (errmsg_internal("forked new backend, pid=%d socket=%d",
        (int) pid, (int) port->sock)));





 bn->pid = pid;
 bn->bkend_type = BACKEND_TYPE_NORMAL;
 dlist_push_head(&BackendList, &bn->elem);






 return STATUS_OK;
}
