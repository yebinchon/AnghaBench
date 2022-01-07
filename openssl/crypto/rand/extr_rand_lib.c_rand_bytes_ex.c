
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef TYPE_1__ RAND_METHOD ;
typedef int RAND_DRBG ;
typedef int OPENSSL_CTX ;


 int * OPENSSL_CTX_get0_public_drbg (int *) ;
 int RAND_DRBG_bytes (int *,unsigned char*,int) ;
 int RAND_F_RAND_BYTES_EX ;
 TYPE_1__ const* RAND_OpenSSL () ;
 int RAND_R_FUNC_NOT_IMPLEMENTED ;
 TYPE_1__* RAND_get_rand_method () ;
 int RANDerr (int ,int ) ;
 int stub1 (unsigned char*,int) ;

int rand_bytes_ex(OPENSSL_CTX *ctx, unsigned char *buf, int num)
{
    RAND_DRBG *drbg;
    int ret;
    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth != RAND_OpenSSL()) {
        if (meth->bytes != ((void*)0))
            return meth->bytes(buf, num);
        RANDerr(RAND_F_RAND_BYTES_EX, RAND_R_FUNC_NOT_IMPLEMENTED);
        return -1;
    }

    drbg = OPENSSL_CTX_get0_public_drbg(ctx);
    if (drbg == ((void*)0))
        return 0;

    ret = RAND_DRBG_bytes(drbg, buf, num);
    return ret;
}
