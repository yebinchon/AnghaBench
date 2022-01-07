
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct espconn {int dummy; } ;
typedef scalar_t__ sint8 ;
typedef scalar_t__ sint16 ;
typedef int netconn_event ;
struct TYPE_5__ {int write_flag; scalar_t__ err; scalar_t__ cntr; int * ptrbuf; } ;
struct TYPE_6__ {struct espconn* pespconn; struct espconn* preverse; TYPE_1__ pcommon; scalar_t__ hs_status; } ;
typedef TYPE_2__ espconn_msg ;


 int ESPCONN_EVENT_CLOSED (struct espconn*) ;
 int ESPCONN_EVENT_ERROR (struct espconn*,scalar_t__) ;
 scalar_t__ ESPCONN_OK ;


 int espconn_kill_oldest_pcb () ;
 int lwIP_ASSERT (TYPE_2__*) ;
 int os_free (TYPE_2__*) ;

__attribute__((used)) static void espconn_close_internal(void *arg, netconn_event event_type)
{
 espconn_msg *pssl_recon = arg;
    struct espconn *espconn = ((void*)0);
    sint8 ssl_reerr = 0;
    sint16 hs_status = 0;
    lwIP_ASSERT(pssl_recon);

 espconn = pssl_recon->preverse;
 ssl_reerr = pssl_recon->pcommon.err;
 hs_status = pssl_recon->hs_status;
 if (espconn != ((void*)0)) {

  pssl_recon->pcommon.write_flag = 0;
  pssl_recon->pcommon.ptrbuf = ((void*)0);
  pssl_recon->pcommon.cntr = 0;
  pssl_recon->pcommon.err = 0;
  espconn = pssl_recon->preverse;
 } else {
  espconn = pssl_recon->pespconn;
  os_free(pssl_recon);
  pssl_recon = ((void*)0);
 }

 espconn_kill_oldest_pcb();
 switch (event_type){
  case 128:
   if (hs_status == ESPCONN_OK)
    ESPCONN_EVENT_ERROR(espconn, ssl_reerr);
   else
    ESPCONN_EVENT_ERROR(espconn, hs_status);
   break;
  case 129:
   if (hs_status == ESPCONN_OK)
    ESPCONN_EVENT_CLOSED(espconn);
   else
    ESPCONN_EVENT_ERROR(espconn, hs_status);
   break;
  default:
   break;
 }
}
