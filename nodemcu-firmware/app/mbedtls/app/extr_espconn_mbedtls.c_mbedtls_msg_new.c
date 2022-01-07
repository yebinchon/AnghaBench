
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pmbedtls_msg ;
typedef int mbedtls_msg ;
struct TYPE_5__ {int conf; int entropy; int ctr_drbg; int ssl; int fd; int listen_fd; scalar_t__ psession; } ;


 int SSL_MAX_FRAGMENT_LENGTH_CODE ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_net_init (int *) ;
 scalar_t__ mbedtls_session_new () ;
 int mbedtls_ssl_conf_max_frag_len (int *,int ) ;
 int mbedtls_ssl_config_init (int *) ;
 int mbedtls_ssl_init (int *) ;
 int os_bzero (TYPE_1__*,int) ;
 int os_free (TYPE_1__*) ;
 int os_zalloc (int) ;

__attribute__((used)) static pmbedtls_msg mbedtls_msg_new(void)
{
 pmbedtls_msg msg = (pmbedtls_msg)os_zalloc( sizeof(mbedtls_msg));
 if (msg) {
  os_bzero(msg, sizeof(mbedtls_msg));
  msg->psession = mbedtls_session_new();
  if (msg->psession){
   mbedtls_net_init(&msg->listen_fd);
   mbedtls_net_init(&msg->fd);
   mbedtls_ssl_init(&msg->ssl);
   mbedtls_ssl_config_init(&msg->conf);
   mbedtls_ctr_drbg_init(&msg->ctr_drbg);
   mbedtls_entropy_init(&msg->entropy);



  } else{
   os_free(msg);
   msg = ((void*)0);
  }
 }
 return msg;
}
