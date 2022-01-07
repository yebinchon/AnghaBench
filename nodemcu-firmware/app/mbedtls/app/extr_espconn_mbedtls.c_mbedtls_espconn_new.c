
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pmbedtls_espconn ;
typedef int mbedtls_espconn ;
typedef int esp_tcp ;
struct TYPE_5__ {int * tcp; } ;
struct TYPE_6__ {TYPE_1__ proto; } ;


 int os_free (TYPE_2__*) ;
 scalar_t__ os_zalloc (int) ;

__attribute__((used)) static pmbedtls_espconn mbedtls_espconn_new(void)
{
 pmbedtls_espconn mbedtls_conn = ((void*)0);
 mbedtls_conn = (pmbedtls_espconn)os_zalloc(sizeof(mbedtls_espconn));
 if (mbedtls_conn){
  mbedtls_conn->proto.tcp = (esp_tcp *)os_zalloc(sizeof(esp_tcp));
  if (mbedtls_conn->proto.tcp == ((void*)0)){
   os_free(mbedtls_conn);
   mbedtls_conn = ((void*)0);
  }
 }

 return mbedtls_conn;
}
