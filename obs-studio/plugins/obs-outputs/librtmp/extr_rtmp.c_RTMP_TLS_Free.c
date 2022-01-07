
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cacert; int entropy; int ctr_drbg; int conf; } ;


 TYPE_1__* RTMP_TLS_ctx ;
 int free (TYPE_1__*) ;
 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_ssl_config_free (int *) ;
 int mbedtls_x509_crt_free (TYPE_1__*) ;

void
RTMP_TLS_Free() {
}
