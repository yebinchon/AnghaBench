
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int write_flag; scalar_t__ cntr; TYPE_2__* ptrbuf; } ;
struct TYPE_10__ {TYPE_1__ pcommon; int ssl; struct TYPE_10__* pssl; } ;
typedef TYPE_2__ uint8 ;
typedef int uint32 ;
typedef scalar_t__ uint16 ;
typedef TYPE_2__* pmbedtls_msg ;
typedef TYPE_2__ espconn_msg ;


 int ESPCONN_OK ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 scalar_t__ MBEDTLS_SSL_PLAIN_ADD ;
 int NETCONN_EVENT_CLOSE ;
 int ets_post (int ,int ,int ) ;
 int lwIPThreadPrio ;
 int lwIP_ASSERT (TYPE_2__*) ;
 int mbedtls_fail_info (TYPE_2__*,int) ;
 int mbedtls_ssl_write (int *,TYPE_2__*,scalar_t__) ;

void espconn_ssl_sent(void *arg, uint8 *psent, uint16 length)
{
 espconn_msg *Threadmsg = arg;
 uint16 out_msglen = length;
 int ret = ESPCONN_OK;
 lwIP_ASSERT(Threadmsg);
 lwIP_ASSERT(psent);
 lwIP_ASSERT(length);
 pmbedtls_msg mbedTLSMsg = Threadmsg->pssl;
 lwIP_ASSERT(mbedTLSMsg);

 if (length > MBEDTLS_SSL_PLAIN_ADD){
  out_msglen = MBEDTLS_SSL_PLAIN_ADD;
 }

 Threadmsg->pcommon.write_flag = 1;
 ret = mbedtls_ssl_write(&mbedTLSMsg->ssl, psent, out_msglen);
 if (ret > 0){
  Threadmsg->pcommon.ptrbuf = psent + ret;
  Threadmsg->pcommon.cntr = length - ret;
 } else{
  if (ret == MBEDTLS_ERR_SSL_WANT_WRITE || ret == 0) {

  } else{
   mbedtls_fail_info(Threadmsg, ret);
   ets_post(lwIPThreadPrio, NETCONN_EVENT_CLOSE,(uint32)Threadmsg);
  }
 }

}
