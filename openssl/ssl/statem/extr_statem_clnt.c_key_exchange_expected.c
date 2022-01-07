
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* new_cipher; } ;
struct TYPE_8__ {TYPE_2__ tmp; } ;
struct TYPE_9__ {TYPE_3__ s3; } ;
struct TYPE_6__ {long algorithm_mkey; } ;
typedef TYPE_4__ SSL ;


 long SSL_kDHE ;
 long SSL_kDHEPSK ;
 long SSL_kECDHE ;
 long SSL_kECDHEPSK ;
 long SSL_kSRP ;

__attribute__((used)) static int key_exchange_expected(SSL *s)
{
    long alg_k = s->s3.tmp.new_cipher->algorithm_mkey;





    if (alg_k & (SSL_kDHE | SSL_kECDHE | SSL_kDHEPSK | SSL_kECDHEPSK
                 | SSL_kSRP)) {
        return 1;
    }

    return 0;
}
