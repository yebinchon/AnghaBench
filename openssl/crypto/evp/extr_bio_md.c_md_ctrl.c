
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int BIO ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 long BIO_ctrl (int *,int,long,void*) ;
 int * BIO_get_data (int *) ;
 int BIO_get_init (int *) ;
 int * BIO_next (int *) ;
 int BIO_set_data (int *,void*) ;
 int BIO_set_init (int *,int) ;
 long EVP_DigestInit_ex (int *,int *,int *) ;
 int EVP_MD_CTX_copy_ex (int *,int *) ;
 int * EVP_MD_CTX_md (int *) ;

__attribute__((used)) static long md_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    EVP_MD_CTX *ctx, *dctx, **pctx;
    const EVP_MD **ppmd;
    EVP_MD *md;
    long ret = 1;
    BIO *dbio, *next;


    ctx = BIO_get_data(b);
    next = BIO_next(b);

    switch (cmd) {
    case 133:
        if (BIO_get_init(b))
            ret = EVP_DigestInit_ex(ctx, EVP_MD_CTX_md(ctx), ((void*)0));
        else
            ret = 0;
        if (ret > 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 131:
        if (BIO_get_init(b)) {
            ppmd = ptr;
            *ppmd = EVP_MD_CTX_md(ctx);
        } else
            ret = 0;
        break;
    case 130:
        pctx = ptr;
        *pctx = ctx;
        BIO_set_init(b, 1);
        break;
    case 128:
        if (BIO_get_init(b))
            BIO_set_data(b, ptr);
        else
            ret = 0;
        break;
    case 132:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(next, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;

    case 129:
        md = ptr;
        ret = EVP_DigestInit_ex(ctx, md, ((void*)0));
        if (ret > 0)
            BIO_set_init(b, 1);
        break;
    case 134:
        dbio = ptr;
        dctx = BIO_get_data(dbio);
        if (!EVP_MD_CTX_copy_ex(dctx, ctx))
            return 0;
        BIO_set_init(b, 1);
        break;
    default:
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    }
    return ret;
}
