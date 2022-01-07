
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * name; } ;
typedef TYPE_1__ RSA_METHOD ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int RSA_F_RSA_METH_NEW ;
 int RSAerr (int ,int ) ;

RSA_METHOD *RSA_meth_new(const char *name, int flags)
{
    RSA_METHOD *meth = OPENSSL_zalloc(sizeof(*meth));

    if (meth != ((void*)0)) {
        meth->flags = flags;

        meth->name = OPENSSL_strdup(name);
        if (meth->name != ((void*)0))
            return meth;

        OPENSSL_free(meth);
    }

    RSAerr(RSA_F_RSA_METH_NEW, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
