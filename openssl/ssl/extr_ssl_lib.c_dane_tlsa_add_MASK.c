#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_11__ {scalar_t__ usage; scalar_t__ selector; size_t mtype; size_t dlen; int /*<<< orphan*/ * spki; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ danetls_record ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_12__ {int umask; int /*<<< orphan*/ * trecs; TYPE_1__* dctx; int /*<<< orphan*/ * certs; } ;
struct TYPE_10__ {scalar_t__* mdord; } ;
typedef  TYPE_3__ SSL_DANE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 scalar_t__ DANETLS_MATCHING_FULL ; 
#define  DANETLS_SELECTOR_CERT 129 
 scalar_t__ DANETLS_SELECTOR_LAST ; 
#define  DANETLS_SELECTOR_SPKI 128 
 int DANETLS_TA_MASK ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ DANETLS_USAGE_DANE_TA ; 
 scalar_t__ DANETLS_USAGE_LAST ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  SSL_F_DANE_TLSA_ADD ; 
 int /*<<< orphan*/  SSL_R_DANE_NOT_ENABLED ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_CERTIFICATE ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_DATA_LENGTH ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_MATCHING_TYPE ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_PUBLIC_KEY ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_BAD_SELECTOR ; 
 int /*<<< orphan*/  SSL_R_DANE_TLSA_NULL_DATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int FUNC18(SSL_DANE *dane,
                         uint8_t usage,
                         uint8_t selector,
                         uint8_t mtype, unsigned const char *data, size_t dlen)
{
    danetls_record *t;
    const EVP_MD *md = NULL;
    int ilen = (int)dlen;
    int i;
    int num;

    if (dane->trecs == NULL) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_NOT_ENABLED);
        return -1;
    }

    if (ilen < 0 || dlen != (size_t)ilen) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_DATA_LENGTH);
        return 0;
    }

    if (usage > DANETLS_USAGE_LAST) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE_USAGE);
        return 0;
    }

    if (selector > DANETLS_SELECTOR_LAST) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_SELECTOR);
        return 0;
    }

    if (mtype != DANETLS_MATCHING_FULL) {
        md = FUNC17(dane, mtype);
        if (md == NULL) {
            FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_MATCHING_TYPE);
            return 0;
        }
    }

    if (md != NULL && dlen != (size_t)FUNC1(md)) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_DIGEST_LENGTH);
        return 0;
    }
    if (!data) {
        FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_NULL_DATA);
        return 0;
    }

    if ((t = FUNC4(sizeof(*t))) == NULL) {
        FUNC5(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    t->usage = usage;
    t->selector = selector;
    t->mtype = mtype;
    t->data = FUNC3(dlen);
    if (t->data == NULL) {
        FUNC16(t);
        FUNC5(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    FUNC10(t->data, data, dlen);
    t->dlen = dlen;

    /* Validate and cache full certificate or public key */
    if (mtype == DANETLS_MATCHING_FULL) {
        const unsigned char *p = data;
        X509 *cert = NULL;
        EVP_PKEY *pkey = NULL;

        switch (selector) {
        case DANETLS_SELECTOR_CERT:
            if (!FUNC9(&cert, &p, ilen) || p < data ||
                dlen != (size_t)(p - data)) {
                FUNC16(t);
                FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE);
                return 0;
            }
            if (FUNC7(cert) == NULL) {
                FUNC16(t);
                FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_CERTIFICATE);
                return 0;
            }

            if ((FUNC0(usage) & DANETLS_TA_MASK) == 0) {
                FUNC6(cert);
                break;
            }

            /*
             * For usage DANE-TA(2), we support authentication via "2 0 0" TLSA
             * records that contain full certificates of trust-anchors that are
             * not present in the wire chain.  For usage PKIX-TA(0), we augment
             * the chain with untrusted Full(0) certificates from DNS, in case
             * they are missing from the chain.
             */
            if ((dane->certs == NULL &&
                 (dane->certs = FUNC11()) == NULL) ||
                !FUNC12(dane->certs, cert)) {
                FUNC5(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
                FUNC6(cert);
                FUNC16(t);
                return -1;
            }
            break;

        case DANETLS_SELECTOR_SPKI:
            if (!FUNC8(&pkey, &p, ilen) || p < data ||
                dlen != (size_t)(p - data)) {
                FUNC16(t);
                FUNC5(SSL_F_DANE_TLSA_ADD, SSL_R_DANE_TLSA_BAD_PUBLIC_KEY);
                return 0;
            }

            /*
             * For usage DANE-TA(2), we support authentication via "2 1 0" TLSA
             * records that contain full bare keys of trust-anchors that are
             * not present in the wire chain.
             */
            if (usage == DANETLS_USAGE_DANE_TA)
                t->spki = pkey;
            else
                FUNC2(pkey);
            break;
        }
    }

    /*-
     * Find the right insertion point for the new record.
     *
     * See crypto/x509/x509_vfy.c.  We sort DANE-EE(3) records first, so that
     * they can be processed first, as they require no chain building, and no
     * expiration or hostname checks.  Because DANE-EE(3) is numerically
     * largest, this is accomplished via descending sort by "usage".
     *
     * We also sort in descending order by matching ordinal to simplify
     * the implementation of digest agility in the verification code.
     *
     * The choice of order for the selector is not significant, so we
     * use the same descending order for consistency.
     */
    num = FUNC14(dane->trecs);
    for (i = 0; i < num; ++i) {
        danetls_record *rec = FUNC15(dane->trecs, i);

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

    if (!FUNC13(dane->trecs, t, i)) {
        FUNC16(t);
        FUNC5(SSL_F_DANE_TLSA_ADD, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    dane->umask |= FUNC0(usage);

    return 1;
}