
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ entry_type; scalar_t__ ext_len; unsigned char* ext; int timestamp; int version; } ;
struct TYPE_5__ {unsigned char* ihash; unsigned char* certder; size_t certderlen; int ihashlen; unsigned char* preder; size_t prederlen; } ;
typedef TYPE_1__ SCT_CTX ;
typedef TYPE_2__ SCT ;
typedef int EVP_MD_CTX ;


 scalar_t__ CT_LOG_ENTRY_TYPE_NOT_SET ;
 scalar_t__ CT_LOG_ENTRY_TYPE_PRECERT ;
 scalar_t__ CT_LOG_ENTRY_TYPE_X509 ;
 int EVP_DigestUpdate (int *,unsigned char*,int) ;
 int SIGNATURE_TYPE_CERT_TIMESTAMP ;
 int l2n3 (size_t,unsigned char*) ;
 int l2n8 (int ,unsigned char*) ;
 int s2n (scalar_t__,unsigned char*) ;

__attribute__((used)) static int sct_ctx_update(EVP_MD_CTX *ctx, const SCT_CTX *sctx, const SCT *sct)
{
    unsigned char tmpbuf[12];
    unsigned char *p, *der;
    size_t derlen;
    if (sct->entry_type == CT_LOG_ENTRY_TYPE_NOT_SET)
        return 0;
    if (sct->entry_type == CT_LOG_ENTRY_TYPE_PRECERT && sctx->ihash == ((void*)0))
        return 0;

    p = tmpbuf;
    *p++ = sct->version;
    *p++ = SIGNATURE_TYPE_CERT_TIMESTAMP;
    l2n8(sct->timestamp, p);
    s2n(sct->entry_type, p);

    if (!EVP_DigestUpdate(ctx, tmpbuf, p - tmpbuf))
        return 0;

    if (sct->entry_type == CT_LOG_ENTRY_TYPE_X509) {
        der = sctx->certder;
        derlen = sctx->certderlen;
    } else {
        if (!EVP_DigestUpdate(ctx, sctx->ihash, sctx->ihashlen))
            return 0;
        der = sctx->preder;
        derlen = sctx->prederlen;
    }


    if (der == ((void*)0))
        return 0;


    p = tmpbuf;
    l2n3(derlen, p);

    if (!EVP_DigestUpdate(ctx, tmpbuf, 3))
        return 0;
    if (!EVP_DigestUpdate(ctx, der, derlen))
        return 0;


    p = tmpbuf;
    s2n(sct->ext_len, p);
    if (!EVP_DigestUpdate(ctx, tmpbuf, 2))
        return 0;

    if (sct->ext_len && !EVP_DigestUpdate(ctx, sct->ext, sct->ext_len))
        return 0;

    return 1;
}
