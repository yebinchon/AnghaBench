
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* tcp; } ;
struct espconn {scalar_t__ link_cnt; TYPE_2__ proto; } ;
typedef int sint8 ;
typedef int remot_info ;
typedef TYPE_3__* pmbedtls_msg ;
struct TYPE_11__ {TYPE_3__* pssl; struct espconn* preverse; } ;
typedef TYPE_4__ espconn_msg ;
struct TYPE_10__ {int listen_fd; } ;
struct TYPE_8__ {int local_port; } ;


 int ESPCONN_ARG ;
 int ESPCONN_INPROGRESS ;
 int ESPCONN_OK ;
 int ESPCONN_SSL ;
 int def_certificate ;
 int def_private_key ;
 int espconn_get_connection_info (struct espconn*,int **,int ) ;
 int espconn_kill_pcb (int ) ;
 int mbedtls_msg_free (TYPE_3__**) ;
 int mbedtls_net_free (int *) ;
 int mbedtls_parame_free (int *) ;
 int os_free (TYPE_4__*) ;
 TYPE_4__* plink_server ;

sint8 espconn_ssl_delete(struct espconn *pdeletecon)
{
 remot_info *pinfo = ((void*)0);
 espconn_msg *pdelete_msg = ((void*)0);
 pmbedtls_msg mbedTLSMsg = ((void*)0);

 if (pdeletecon == ((void*)0))
  return ESPCONN_ARG;

 espconn_get_connection_info(pdeletecon, &pinfo, ESPCONN_SSL);

 if (pdeletecon->link_cnt != 0)
  return ESPCONN_INPROGRESS;
 else {
  pdelete_msg = plink_server;
  if (pdelete_msg != ((void*)0) && pdelete_msg->preverse == pdeletecon) {
   mbedTLSMsg = pdelete_msg->pssl;
   espconn_kill_pcb(pdeletecon->proto.tcp->local_port);
   mbedtls_net_free(&mbedTLSMsg->listen_fd);
   mbedtls_msg_free(&mbedTLSMsg);
   pdelete_msg->pssl = mbedTLSMsg;
   os_free(pdelete_msg);
   pdelete_msg = ((void*)0);
   plink_server = pdelete_msg;
   mbedtls_parame_free(&def_private_key);
   mbedtls_parame_free(&def_certificate);
   return ESPCONN_OK;
  } else {
   return ESPCONN_ARG;
  }
 }
}
