
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_11__ {scalar_t__ usage; scalar_t__ selector; size_t mtype; size_t dlen; int * spki; int * data; } ;
typedef TYPE_2__ danetls_record ;
typedef int X509 ;
struct TYPE_12__ {int umask; int * trecs; TYPE_1__* dctx; int * certs; } ;
struct TYPE_10__ {scalar_t__* mdord; } ;
typedef TYPE_3__ SSL_DANE ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 scalar_t__ DANETLS_MATCHING_FULL ;

 scalar_t__ DANETLS_SELECTOR_LAST ;

 int DANETLS_TA_MASK ;
 int DANETLS_USAGE_BIT (scalar_t__) ;
 scalar_t__ DANETLS_USAGE_DANE_TA ;
 scalar_t__ DANETLS_USAGE_LAST ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_MD_size (int const*) ;
 int EVP_PKEY_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int SSL_F_DANE_TLSA_ADD ;
 int SSL_R_DANE_NOT_ENABLED ;
 int SSL_R_DANE_TLSA_BAD_CERTIFICATE ;
 int SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE ;
 int SSL_R_DANE_TLSA_BAD_DATA_LENGTH ;
 int SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH ;
 int SSL_R_DANE_TLSA_BAD_MATCHING_TYPE ;
 int SSL_R_DANE_TLSA_BAD_PUBLIC_KEY ;
 int SSL_R_DANE_TLSA_BAD_SELECTOR ;
 int SSL_R_DANE_TLSA_NULL_DATA ;
 int SSLerr (int ,int ) ;
 int X509_free (int *) ;
 int * X509_get0_pubkey (int *) ;
 int d2i_PUBKEY (int **,unsigned char const**,int) ;
 int d2i_X509 (int **,unsigned char const**,int) ;
 int memcpy (int *,unsigned char const*,size_t) ;
 int * sk_X509_new_null () ;
 int sk_X509_push (int *,int *) ;
 int sk_danetls_record_insert (int *,TYPE_2__*,int) ;
 int sk_danetls_record_num (int *) ;
 TYPE_2__* sk_danetls_record_value (int *,int) ;
 int tlsa_free (TYPE_2__*) ;
 int * tlsa_md_get (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int dane_tlsa_add(SSL_DANE *dane,
                         uint8_t usage,
                         uint8_t selector,
                         uint8_t mtype, unsigned const char *data, size_t dlen)
{
    danetls_record *t;
    const EVP_MD *md = ((void*)0);
    int ilen = (int)dlen;
    int i;
    int num;

    if (dane->trecs == ((void*)0)) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_NOT_ENABLED);
        return -1;
    }

    if (ilen < 0 || dlen != (size_t)ilen) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_DATA_LENGTH);
        return 0;
    }

    if (usage > DANETLS_USAGE_LAST) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE);
        return 0;
    }

    if (selector > DANETLS_SELECTOR_LAST) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_SELECTOR);
        return 0;
    }

    if (mtype != DANETLS_MATCHING_FULL) {
        md = tlsa_md_get(dane, mtype);
        if (md == ((void*)0)) {
            SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_MATCHING_TYPE);
            return 0;
        }
    }

    if (md != ((void*)0) && dlen != (size_t)EVP_MD_size(md)) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH);
        return 0;
    }
    if (!data) {
        SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_NULL_DATA);
        return 0;
    }

    if ((t = OPENSSL_zalloc(sizeof(*t))) == ((void*)0)) {
        SSLerr(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    t->usage = usage;
    t->selector = selector;
    t->mtype = mtype;
    t->data = OPENSSL_malloc(dlen);
    if (t->data == ((void*)0)) {
        tlsa_free(t);
        SSLerr(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    memcpy(t->data, data, dlen);
    t->dlen = dlen;


    if (mtype == DANETLS_MATCHING_FULL) {
        const unsigned char *p = data;
        X509 *cert = ((void*)0);
        EVP_PKEY *pkey = ((void*)0);

        switch (selector) {
        case 129:
            if (!d2i_X509(&cert, &p, ilen) || p < data ||
                dlen != (size_t)(p - data)) {
                tlsa_free(t);
                SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE);
                return 0;
            }
            if (X509_get0_pubkey(cert) == ((void*)0)) {
                tlsa_free(t);
                SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE);
                return 0;
            }

            if ((DANETLS_USAGE_BIT(usage) & DANETLS_TA_MASK) == 0) {
                X509_free(cert);
                break;
            }
            if ((dane->certs == ((void*)0) &&
                 (dane->certs = sk_X509_new_null()) == ((void*)0)) ||
                !sk_X509_push(dane->certs, cert)) {
                SSLerr(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
                X509_free(cert);
                tlsa_free(t);
                return -1;
            }
            break;

        case 128:
            if (!d2i_PUBKEY(&pkey, &p, ilen) || p < data ||
                dlen != (size_t)(p - data)) {
                tlsa_free(t);
                SSLerr(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_PUBLIC_KEY);
                return 0;
            }






            if (usage == DANETLS_USAGE_DANE_TA)
                t->spki = pkey;
            else
                EVP_PKEY_free(pkey);
            break;
        }
    }
    num = sk_danetls_record_num(dane->trecs);
    for (i = 0; i < num; ++i) {
        danetls_record *rec = sk_danetls_record_value(dane->trecs, i);

        if (rec->usage > usage)
            continue;
        if (rec->usage < usage)
            break;
        if (rec->selector > selector)
            continue;
        if (rec->selector < selector)
            break;
        if (dane->dctx->mdord[rec->mtype] > dane->dctx->mdord[mtype])
            continue;
        break;
    }

    if (!sk_danetls_record_insert(dane->trecs, t, i)) {
        tlsa_free(t);
        SSLerr(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    dane->umask |= DANETLS_USAGE_BIT(usage);

    return 1;
}
