
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * compress; int * expand; int * enc_write_ctx; int * enc_read_ctx; } ;
typedef TYPE_1__ SSL ;


 int COMP_CTX_free (int *) ;
 int EVP_CIPHER_CTX_free (int *) ;

void ssl_clear_cipher_ctx(SSL *s)
{
    if (s->enc_read_ctx != ((void*)0)) {
        EVP_CIPHER_CTX_free(s->enc_read_ctx);
        s->enc_read_ctx = ((void*)0);
    }
    if (s->enc_write_ctx != ((void*)0)) {
        EVP_CIPHER_CTX_free(s->enc_write_ctx);
        s->enc_write_ctx = ((void*)0);
    }

    COMP_CTX_free(s->expand);
    s->expand = ((void*)0);
    COMP_CTX_free(s->compress);
    s->compress = ((void*)0);

}
