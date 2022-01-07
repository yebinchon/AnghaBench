
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * name; } ;
typedef TYPE_1__ DSA_METHOD ;


 int DSA_F_DSA_METH_DUP ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * OPENSSL_strdup (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

DSA_METHOD *DSA_meth_dup(const DSA_METHOD *dsam)
{
    DSA_METHOD *ret = OPENSSL_malloc(sizeof(*ret));

    if (ret != ((void*)0)) {
        memcpy(ret, dsam, sizeof(*dsam));

        ret->name = OPENSSL_strdup(dsam->name);
        if (ret->name != ((void*)0))
            return ret;

        OPENSSL_free(ret);
    }

    DSAerr(DSA_F_DSA_METH_DUP, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
