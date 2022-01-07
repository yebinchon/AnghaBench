
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const* uint8_t ;
struct dane_ctx_st {int const* mdmax; int const** mdord; int const** mdevp; } ;
struct TYPE_3__ {scalar_t__ nid; size_t mtype; int * ord; } ;
typedef int EVP_MD ;


 int * DANETLS_MATCHING_LAST ;
 int ERR_R_MALLOC_FAILURE ;
 int * EVP_get_digestbynid (scalar_t__) ;
 scalar_t__ NID_undef ;
 int OPENSSL_free (int const**) ;
 int ** OPENSSL_zalloc (int) ;
 size_t OSSL_NELEM (TYPE_1__*) ;
 int SSL_F_DANE_CTX_ENABLE ;
 int SSLerr (int ,int ) ;
 TYPE_1__* dane_mds ;

__attribute__((used)) static int dane_ctx_enable(struct dane_ctx_st *dctx)
{
    const EVP_MD **mdevp;
    uint8_t *mdord;
    uint8_t mdmax = DANETLS_MATCHING_LAST;
    int n = ((int)mdmax) + 1;
    size_t i;

    if (dctx->mdevp != ((void*)0))
        return 1;

    mdevp = OPENSSL_zalloc(n * sizeof(*mdevp));
    mdord = OPENSSL_zalloc(n * sizeof(*mdord));

    if (mdord == ((void*)0) || mdevp == ((void*)0)) {
        OPENSSL_free(mdord);
        OPENSSL_free(mdevp);
        SSLerr(SSL_F_DANE_CTX_ENABLE, ERR_R_MALLOC_FAILURE);
        return 0;
    }


    for (i = 0; i < OSSL_NELEM(dane_mds); ++i) {
        const EVP_MD *md;

        if (dane_mds[i].nid == NID_undef ||
            (md = EVP_get_digestbynid(dane_mds[i].nid)) == ((void*)0))
            continue;
        mdevp[dane_mds[i].mtype] = md;
        mdord[dane_mds[i].mtype] = dane_mds[i].ord;
    }

    dctx->mdevp = mdevp;
    dctx->mdord = mdord;
    dctx->mdmax = mdmax;

    return 1;
}
