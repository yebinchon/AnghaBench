
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int exporterlabel ;
struct TYPE_6__ {unsigned char* exporter_master_secret; } ;
typedef TYPE_1__ SSL ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int ossl_statem_export_allowed (TYPE_1__*) ;
 int * ssl_handshake_md (TYPE_1__*) ;
 int tls13_hkdf_expand (TYPE_1__*,int const*,unsigned char*,unsigned char const*,int,unsigned char*,unsigned int,unsigned char*,size_t,int ) ;

int tls13_export_keying_material(SSL *s, unsigned char *out, size_t olen,
                                 const char *label, size_t llen,
                                 const unsigned char *context,
                                 size_t contextlen, int use_context)
{
    unsigned char exportsecret[EVP_MAX_MD_SIZE];



    static const unsigned char exporterlabel[] = "exporter";

    unsigned char hash[EVP_MAX_MD_SIZE], data[EVP_MAX_MD_SIZE];
    const EVP_MD *md = ssl_handshake_md(s);
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();
    unsigned int hashsize, datalen;
    int ret = 0;

    if (ctx == ((void*)0) || !ossl_statem_export_allowed(s))
        goto err;

    if (!use_context)
        contextlen = 0;

    if (EVP_DigestInit_ex(ctx, md, ((void*)0)) <= 0
            || EVP_DigestUpdate(ctx, context, contextlen) <= 0
            || EVP_DigestFinal_ex(ctx, hash, &hashsize) <= 0
            || EVP_DigestInit_ex(ctx, md, ((void*)0)) <= 0
            || EVP_DigestFinal_ex(ctx, data, &datalen) <= 0
            || !tls13_hkdf_expand(s, md, s->exporter_master_secret,
                                  (const unsigned char *)label, llen,
                                  data, datalen, exportsecret, hashsize, 0)
            || !tls13_hkdf_expand(s, md, exportsecret, exporterlabel,
                                  sizeof(exporterlabel) - 1, hash, hashsize,
                                  out, olen, 0))
        goto err;

    ret = 1;
 err:
    EVP_MD_CTX_free(ctx);
    return ret;
}
