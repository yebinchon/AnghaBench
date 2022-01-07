
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmbedtls_session ;
typedef int mbedtls_session ;
struct TYPE_3__ {int pkey; int clicert; int cacert; } ;


 int mbedtls_pk_init (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int os_zalloc (int) ;

__attribute__((used)) static pmbedtls_session mbedtls_session_new(void)
{
 pmbedtls_session session = (pmbedtls_session)os_zalloc(sizeof(mbedtls_session));
 if (session){
  mbedtls_x509_crt_init(&session->cacert);
  mbedtls_x509_crt_init(&session->clicert);
  mbedtls_pk_init(&session->pkey);

 }
 return session;
}
