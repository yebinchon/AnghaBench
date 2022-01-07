
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* pmbedtls_msg ;
typedef int mbedtls_msg ;
struct TYPE_8__ {int * out_buf; } ;
struct TYPE_7__ {int entropy; int ctr_drbg; int conf; TYPE_3__ ssl; int fd; scalar_t__ psession; scalar_t__ quiet; } ;


 int MBEDTLS_SSL_OUTBUFFER_LEN ;
 int lwIP_ASSERT (TYPE_1__*) ;
 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_net_init (int *) ;
 int mbedtls_session_free (scalar_t__*) ;
 scalar_t__ mbedtls_session_new () ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_ssl_config_init (int *) ;
 int mbedtls_ssl_free (TYPE_3__*) ;
 int mbedtls_ssl_init (TYPE_3__*) ;
 int mbedtls_zeroize (int *,int ) ;
 int os_bzero (TYPE_1__*,int) ;
 int os_free (int *) ;

__attribute__((used)) static void mbedtls_msg_server_step(pmbedtls_msg msg)
{
 lwIP_ASSERT(msg);


 if (msg->psession){
  mbedtls_session_free(&msg->psession);
 }
 mbedtls_entropy_free(&msg->entropy);
 mbedtls_ssl_free(&msg->ssl);
 mbedtls_ssl_config_free(&msg->conf);
 mbedtls_ctr_drbg_free(&msg->ctr_drbg);


 os_bzero(msg, sizeof(mbedtls_msg));
 msg->psession = mbedtls_session_new();
 if (msg->psession){
  mbedtls_net_init(&msg->fd);
  mbedtls_ssl_init(&msg->ssl);
  mbedtls_ssl_config_init(&msg->conf);
  mbedtls_ctr_drbg_init(&msg->ctr_drbg);
  mbedtls_entropy_init(&msg->entropy);
 }
}
