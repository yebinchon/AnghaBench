
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_7__ {TYPE_1__* new_cipher; } ;
struct TYPE_8__ {TYPE_2__ tmp; } ;
struct TYPE_9__ {TYPE_3__ s3; } ;
struct TYPE_6__ {int algorithm_auth; } ;
typedef TYPE_4__ SSL ;


 int SSL_F_SSL_CHECK_SRVR_ECC_CERT_AND_ALG ;
 int SSL_R_ECC_CERT_NOT_FOR_SIGNING ;
 int SSL_aECDSA ;
 int SSLerr (int ,int ) ;
 int X509_get_key_usage (int *) ;
 int X509v3_KU_DIGITAL_SIGNATURE ;

int ssl_check_srvr_ecc_cert_and_alg(X509 *x, SSL *s)
{
    if (s->s3.tmp.new_cipher->algorithm_auth & SSL_aECDSA) {

        if (!(X509_get_key_usage(x) & X509v3_KU_DIGITAL_SIGNATURE)) {
            SSLerr(SSL_F_SSL_CHECK_SRVR_ECC_CERT_AND_ALG,
                   SSL_R_ECC_CERT_NOT_FOR_SIGNING);
            return 0;
        }
    }
    return 1;
}
