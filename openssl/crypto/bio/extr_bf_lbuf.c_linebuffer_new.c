
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int init; char* ptr; scalar_t__ flags; } ;
struct TYPE_5__ {int obuf_size; scalar_t__ obuf_len; int * obuf; } ;
typedef TYPE_1__ BIO_LINEBUFFER_CTX ;
typedef TYPE_2__ BIO ;


 int BIO_F_LINEBUFFER_NEW ;
 int BIOerr (int ,int ) ;
 int DEFAULT_LINEBUFFER_SIZE ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 void* OPENSSL_malloc (int) ;

__attribute__((used)) static int linebuffer_new(BIO *bi)
{
    BIO_LINEBUFFER_CTX *ctx;

    if ((ctx = OPENSSL_malloc(sizeof(*ctx))) == ((void*)0)) {
        BIOerr(BIO_F_LINEBUFFER_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ctx->obuf = OPENSSL_malloc(DEFAULT_LINEBUFFER_SIZE);
    if (ctx->obuf == ((void*)0)) {
        BIOerr(BIO_F_LINEBUFFER_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ctx);
        return 0;
    }
    ctx->obuf_size = DEFAULT_LINEBUFFER_SIZE;
    ctx->obuf_len = 0;

    bi->init = 1;
    bi->ptr = (char *)ctx;
    bi->flags = 0;
    return 1;
}
