
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * (* dupctx ) (int *) ;} ;
struct TYPE_10__ {int * data; TYPE_6__* meth; } ;
typedef TYPE_1__ EVP_KDF_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_KDF_CTX_DUP ;
 int EVP_KDF_CTX_free (TYPE_1__*) ;
 int EVP_KDF_up_ref (TYPE_6__*) ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int * stub1 (int *) ;

EVP_KDF_CTX *EVP_KDF_CTX_dup(const EVP_KDF_CTX *src)
{
    EVP_KDF_CTX *dst;

    if (src == ((void*)0) || src->data == ((void*)0) || src->meth->dupctx == ((void*)0))
        return ((void*)0);

    dst = OPENSSL_malloc(sizeof(*dst));
    if (dst == ((void*)0)) {
        EVPerr(EVP_F_EVP_KDF_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    memcpy(dst, src, sizeof(*dst));
    if (!EVP_KDF_up_ref(dst->meth)) {
        EVPerr(EVP_F_EVP_KDF_CTX_DUP, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(dst);
        return ((void*)0);
    }

    dst->data = src->meth->dupctx(src->data);
    if (dst->data == ((void*)0)) {
        EVP_KDF_CTX_free(dst);
        return ((void*)0);
    }
    return dst;
}
