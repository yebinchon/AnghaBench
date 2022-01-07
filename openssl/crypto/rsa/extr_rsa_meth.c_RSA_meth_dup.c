
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * name; } ;
typedef TYPE_1__ RSA_METHOD ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * OPENSSL_strdup (int *) ;
 int RSA_F_RSA_METH_DUP ;
 int RSAerr (int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

RSA_METHOD *RSA_meth_dup(const RSA_METHOD *meth)
{
    RSA_METHOD *ret = OPENSSL_malloc(sizeof(*ret));

    if (ret != ((void*)0)) {
        memcpy(ret, meth, sizeof(*meth));

        ret->name = OPENSSL_strdup(meth->name);
        if (ret->name != ((void*)0))
            return ret;

        OPENSSL_free(ret);
    }

    RSAerr(RSA_F_RSA_METH_DUP, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
