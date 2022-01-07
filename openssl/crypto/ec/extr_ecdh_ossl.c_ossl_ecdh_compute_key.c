
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* ecdh_compute_key ) (unsigned char**,size_t*,int const*,TYPE_3__ const*) ;} ;
typedef int EC_POINT ;
typedef TYPE_3__ EC_KEY ;


 int EC_F_OSSL_ECDH_COMPUTE_KEY ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_ECDH ;
 int ECerr (int ,int ) ;
 int stub1 (unsigned char**,size_t*,int const*,TYPE_3__ const*) ;

int ossl_ecdh_compute_key(unsigned char **psec, size_t *pseclen,
                          const EC_POINT *pub_key, const EC_KEY *ecdh)
{
    if (ecdh->group->meth->ecdh_compute_key == ((void*)0)) {
        ECerr(EC_F_OSSL_ECDH_COMPUTE_KEY, EC_R_CURVE_DOES_NOT_SUPPORT_ECDH);
        return 0;
    }

    return ecdh->group->meth->ecdh_compute_key(psec, pseclen, pub_key, ecdh);
}
