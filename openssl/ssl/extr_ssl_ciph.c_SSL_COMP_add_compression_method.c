
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; int * method; } ;
typedef TYPE_1__ SSL_COMP ;
typedef int COMP_METHOD ;


 scalar_t__ COMP_get_type (int *) ;
 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_mem_ctrl (int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ NID_undef ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD ;
 int SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE ;
 int SSL_R_DUPLICATE_COMPRESSION_ID ;
 int SSLerr (int ,int ) ;
 int load_builtin_compressions () ;
 scalar_t__ sk_SSL_COMP_find (int *,TYPE_1__*) ;
 int sk_SSL_COMP_push (int *,TYPE_1__*) ;
 int * ssl_comp_methods ;

int SSL_COMP_add_compression_method(int id, COMP_METHOD *cm)
{
    SSL_COMP *comp;

    if (cm == ((void*)0) || COMP_get_type(cm) == NID_undef)
        return 1;
    if (id < 193 || id > 255) {
        SSLerr(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD,
               SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE);
        return 1;
    }

    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);
    comp = OPENSSL_malloc(sizeof(*comp));
    if (comp == ((void*)0)) {
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
        SSLerr(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, ERR_R_MALLOC_FAILURE);
        return 1;
    }

    comp->id = id;
    comp->method = cm;
    load_builtin_compressions();
    if (ssl_comp_methods && sk_SSL_COMP_find(ssl_comp_methods, comp) >= 0) {
        OPENSSL_free(comp);
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
        SSLerr(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD,
               SSL_R_DUPLICATE_COMPRESSION_ID);
        return 1;
    }
    if (ssl_comp_methods == ((void*)0) || !sk_SSL_COMP_push(ssl_comp_methods, comp)) {
        OPENSSL_free(comp);
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
        SSLerr(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, ERR_R_MALLOC_FAILURE);
        return 1;
    }
    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
    return 0;
}
