
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * (* dupctx ) (int *) ;} ;
struct TYPE_8__ {int * data; TYPE_4__* meth; } ;
typedef TYPE_1__ EVP_MAC_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_MAC_CTX_DUP ;
 int EVP_MAC_CTX_free (TYPE_1__*) ;
 int EVP_MAC_up_ref (TYPE_4__*) ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * stub1 (int *) ;

EVP_MAC_CTX *EVP_MAC_CTX_dup(const EVP_MAC_CTX *src)
{
    EVP_MAC_CTX *dst;

    if (src->data == ((void*)0))
        return ((void*)0);

    dst = OPENSSL_malloc(sizeof(*dst));
    if (dst == ((void*)0)) {
        EVPerr(EVP_F_EVP_MAC_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    *dst = *src;
    if (!EVP_MAC_up_ref(dst->meth)) {
        EVPerr(EVP_F_EVP_MAC_CTX_DUP, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(dst);
        return ((void*)0);
    }

    dst->data = src->meth->dupctx(src->data);
    if (dst->data == ((void*)0)) {
        EVP_MAC_CTX_free(dst);
        return ((void*)0);
    }

    return dst;
}
