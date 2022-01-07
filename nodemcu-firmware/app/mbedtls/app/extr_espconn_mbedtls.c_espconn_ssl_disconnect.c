
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef TYPE_2__* pmbedtls_msg ;
struct TYPE_7__ {TYPE_1__* pespconn; int fd; struct TYPE_7__* pssl; } ;
typedef TYPE_2__ espconn_msg ;
struct TYPE_6__ {int state; } ;


 int ESPCONN_CLOSE ;
 int NETCONN_EVENT_CLOSE ;
 int ets_post (int ,int ,int ) ;
 int lwIPThreadPrio ;
 int lwIP_ASSERT (TYPE_2__*) ;
 int mbedtls_net_free (int *) ;

void espconn_ssl_disconnect(espconn_msg *Threadmsg)
{
 lwIP_ASSERT(Threadmsg);
 pmbedtls_msg mbedTLSMsg = Threadmsg->pssl;
 lwIP_ASSERT(mbedTLSMsg);
 mbedtls_net_free(&mbedTLSMsg->fd);
 Threadmsg->pespconn->state = ESPCONN_CLOSE;
 ets_post(lwIPThreadPrio, NETCONN_EVENT_CLOSE, (uint32)Threadmsg);
}
