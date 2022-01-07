
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkey_id; int flags; } ;
typedef TYPE_1__ EVP_PKEY_METHOD ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY_METH_NEW ;
 int EVP_PKEY_FLAG_DYNAMIC ;
 int EVPerr (int ,int ) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EVP_PKEY_METHOD *EVP_PKEY_meth_new(int id, int flags)
{
    EVP_PKEY_METHOD *pmeth;

    pmeth = OPENSSL_zalloc(sizeof(*pmeth));
    if (pmeth == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_METH_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    pmeth->pkey_id = id;
    pmeth->flags = flags | EVP_PKEY_FLAG_DYNAMIC;
    return pmeth;
}
