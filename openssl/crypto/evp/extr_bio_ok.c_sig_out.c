
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_len; int blockout; scalar_t__ sigio; int * buf; int * md; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int EVP_DigestFinal_ex (int *,int *,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,int ,int ) ;
 int * EVP_MD_CTX_md (int *) ;
 void* EVP_MD_CTX_md_data (int *) ;
 int EVP_MD_size (int const*) ;
 int OK_BLOCK_SIZE ;
 scalar_t__ RAND_bytes (void*,int) ;
 int WELLKNOWN ;
 int longswap (int *,int) ;
 int memcpy (int *,void*,int) ;
 int strlen (int ) ;

__attribute__((used)) static int sig_out(BIO *b)
{
    BIO_OK_CTX *ctx;
    EVP_MD_CTX *md;
    const EVP_MD *digest;
    int md_size;
    void *md_data;

    ctx = BIO_get_data(b);
    md = ctx->md;
    digest = EVP_MD_CTX_md(md);
    md_size = EVP_MD_size(digest);
    md_data = EVP_MD_CTX_md_data(md);

    if (ctx->buf_len + 2 * md_size > OK_BLOCK_SIZE)
        return 1;

    if (!EVP_DigestInit_ex(md, digest, ((void*)0)))
        goto berr;




    if (RAND_bytes(md_data, md_size) <= 0)
        goto berr;
    memcpy(&(ctx->buf[ctx->buf_len]), md_data, md_size);
    longswap(&(ctx->buf[ctx->buf_len]), md_size);
    ctx->buf_len += md_size;

    if (!EVP_DigestUpdate(md, WELLKNOWN, strlen(WELLKNOWN)))
        goto berr;
    if (!EVP_DigestFinal_ex(md, &(ctx->buf[ctx->buf_len]), ((void*)0)))
        goto berr;
    ctx->buf_len += md_size;
    ctx->blockout = 1;
    ctx->sigio = 0;
    return 1;
 berr:
    BIO_clear_retry_flags(b);
    return 0;
}
