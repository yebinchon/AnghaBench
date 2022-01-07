
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_18__ {int context; int elevel; } ;
struct TYPE_17__ {int* known_attached_workers; TYPE_1__* worker; int * error_context_stack; int nknown_attached_workers; } ;
struct TYPE_16__ {int len; } ;
struct TYPE_15__ {int * error_mqh; int pid; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ ParallelContext ;
typedef TYPE_4__ ErrorData ;
typedef int ErrorContextCallback ;


 int ERROR ;
 int FORCE_PARALLEL_REGRESS ;
 int Min (int ,int ) ;
 int NotifyMyFrontEnd (char const*,char const*,int ) ;
 int ThrowErrorData (TYPE_4__*) ;
 int _ (char*) ;
 int elog (int ,char*,char,int ) ;
 int * error_context_stack ;
 int force_parallel_mode ;
 int pq_endmessage (TYPE_2__*) ;
 char pq_getmsgbyte (TYPE_2__*) ;
 int pq_getmsgend (TYPE_2__*) ;
 int pq_getmsgint (TYPE_2__*,int) ;
 char* pq_getmsgrawstring (TYPE_2__*) ;
 int pq_parse_errornotice (TYPE_2__*,TYPE_4__*) ;
 int psprintf (char*,int ,int ) ;
 int pstrdup (int ) ;
 int shm_mq_detach (int *) ;

__attribute__((used)) static void
HandleParallelMessage(ParallelContext *pcxt, int i, StringInfo msg)
{
 char msgtype;

 if (pcxt->known_attached_workers != ((void*)0) &&
  !pcxt->known_attached_workers[i])
 {
  pcxt->known_attached_workers[i] = 1;
  pcxt->nknown_attached_workers++;
 }

 msgtype = pq_getmsgbyte(msg);

 switch (msgtype)
 {
  case 'K':
   {
    int32 pid = pq_getmsgint(msg, 4);

    (void) pq_getmsgint(msg, 4);
    (void) pq_getmsgend(msg);
    pcxt->worker[i].pid = pid;
    break;
   }

  case 'E':
  case 'N':
   {
    ErrorData edata;
    ErrorContextCallback *save_error_context_stack;


    pq_parse_errornotice(msg, &edata);


    edata.elevel = Min(edata.elevel, ERROR);
    if (force_parallel_mode != FORCE_PARALLEL_REGRESS)
    {
     if (edata.context)
      edata.context = psprintf("%s\n%s", edata.context,
             _("parallel worker"));
     else
      edata.context = pstrdup(_("parallel worker"));
    }






    save_error_context_stack = error_context_stack;
    error_context_stack = pcxt->error_context_stack;


    ThrowErrorData(&edata);


    error_context_stack = save_error_context_stack;

    break;
   }

  case 'A':
   {

    int32 pid;
    const char *channel;
    const char *payload;

    pid = pq_getmsgint(msg, 4);
    channel = pq_getmsgrawstring(msg);
    payload = pq_getmsgrawstring(msg);
    pq_endmessage(msg);

    NotifyMyFrontEnd(channel, payload, pid);

    break;
   }

  case 'X':
   {
    shm_mq_detach(pcxt->worker[i].error_mqh);
    pcxt->worker[i].error_mqh = ((void*)0);
    break;
   }

  default:
   {
    elog(ERROR, "unrecognized message type received from parallel worker: %c (message length %d bytes)",
      msgtype, msg->len);
   }
 }
}
