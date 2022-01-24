#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int length; scalar_t__ type; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_1__ ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 long FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ V_ASN1_NEG_INTEGER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long,int) ; 
 unsigned long X509_FLAG_COMPAT ; 
 unsigned long X509_FLAG_NO_AUX ; 
 unsigned long X509_FLAG_NO_EXTENSIONS ; 
 unsigned long X509_FLAG_NO_HEADER ; 
 unsigned long X509_FLAG_NO_IDS ; 
 unsigned long X509_FLAG_NO_ISSUER ; 
 unsigned long X509_FLAG_NO_PUBKEY ; 
 unsigned long X509_FLAG_NO_SERIAL ; 
 unsigned long X509_FLAG_NO_SIGDUMP ; 
 unsigned long X509_FLAG_NO_SIGNAME ; 
 unsigned long X509_FLAG_NO_SUBJECT ; 
 unsigned long X509_FLAG_NO_VALIDITY ; 
 unsigned long X509_FLAG_NO_VERSION ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 long FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 unsigned long XN_FLAG_SEP_MASK ; 
 unsigned long XN_FLAG_SEP_MULTILINE ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC29(BIO *bp, X509 *x, unsigned long nmflags,
                  unsigned long cflag)
{
    long l;
    int ret = 0, i;
    char *m = NULL, mlch = ' ';
    int nmindent = 0;
    ASN1_INTEGER *bs;
    EVP_PKEY *pkey = NULL;
    const char *neg;

    if ((nmflags & XN_FLAG_SEP_MASK) == XN_FLAG_SEP_MULTILINE) {
        mlch = '\n';
        nmindent = 12;
    }

    if (nmflags == X509_FLAG_COMPAT)
        nmindent = 16;

    if (!(cflag & X509_FLAG_NO_HEADER)) {
        if (FUNC4(bp, "Certificate:\n", 13) <= 0)
            goto err;
        if (FUNC4(bp, "    Data:\n", 10) <= 0)
            goto err;
    }
    if (!(cflag & X509_FLAG_NO_VERSION)) {
        l = FUNC25(x);
        if (l >= 0 && l <= 2) {
            if (FUNC2(bp, "%8sVersion: %ld (0x%lx)\n", "", l + 1, (unsigned long)l) <= 0)
                goto err;
        } else {
            if (FUNC2(bp, "%8sVersion: Unknown (%ld)\n", "", l) <= 0)
                goto err;
        }
    }
    if (!(cflag & X509_FLAG_NO_SERIAL)) {

        if (FUNC4(bp, "        Serial Number:", 22) <= 0)
            goto err;

        bs = FUNC23(x);
        if (bs->length <= (int)sizeof(long)) {
                FUNC7();
                l = FUNC0(bs);
                FUNC5();
        } else {
            l = -1;
        }
        if (l != -1) {
            unsigned long ul;
            if (bs->type == V_ASN1_NEG_INTEGER) {
                ul = 0 - (unsigned long)l;
                neg = "-";
            } else {
                ul = l;
                neg = "";
            }
            if (FUNC2(bp, " %s%lu (%s0x%lx)\n", neg, ul, neg, ul) <= 0)
                goto err;
        } else {
            neg = (bs->type == V_ASN1_NEG_INTEGER) ? " (Negative)" : "";
            if (FUNC2(bp, "\n%12s%s", "", neg) <= 0)
                goto err;

            for (i = 0; i < bs->length; i++) {
                if (FUNC2(bp, "%02x%c", bs->data[i],
                               ((i + 1 == bs->length) ? '\n' : ':')) <= 0)
                    goto err;
            }
        }

    }

    if (!(cflag & X509_FLAG_NO_SIGNAME)) {
        const X509_ALGOR *tsig_alg = FUNC19(x);

        if (FUNC3(bp, "    ") <= 0)
            goto err;
        if (FUNC27(bp, tsig_alg, NULL) <= 0)
            goto err;
    }

    if (!(cflag & X509_FLAG_NO_ISSUER)) {
        if (FUNC2(bp, "        Issuer:%c", mlch) <= 0)
            goto err;
        if (FUNC11(bp, FUNC22(x), nmindent, nmflags)
            < 0)
            goto err;
        if (FUNC4(bp, "\n", 1) <= 0)
            goto err;
    }
    if (!(cflag & X509_FLAG_NO_VALIDITY)) {
        if (FUNC4(bp, "        Validity\n", 17) <= 0)
            goto err;
        if (FUNC4(bp, "            Not Before: ", 24) <= 0)
            goto err;
        if (!FUNC1(bp, FUNC16(x)))
            goto err;
        if (FUNC4(bp, "\n            Not After : ", 25) <= 0)
            goto err;
        if (!FUNC1(bp, FUNC15(x)))
            goto err;
        if (FUNC4(bp, "\n", 1) <= 0)
            goto err;
    }
    if (!(cflag & X509_FLAG_NO_SUBJECT)) {
        if (FUNC2(bp, "        Subject:%c", mlch) <= 0)
            goto err;
        if (FUNC11
            (bp, FUNC24(x), nmindent, nmflags) < 0)
            goto err;
        if (FUNC4(bp, "\n", 1) <= 0)
            goto err;
    }
    if (!(cflag & X509_FLAG_NO_PUBKEY)) {
        X509_PUBKEY *xpkey = FUNC21(x);
        ASN1_OBJECT *xpoid;
        FUNC12(&xpoid, NULL, NULL, NULL, xpkey);
        if (FUNC4(bp, "        Subject Public Key Info:\n", 33) <= 0)
            goto err;
        if (FUNC2(bp, "%12sPublic Key Algorithm: ", "") <= 0)
            goto err;
        if (FUNC28(bp, xpoid) <= 0)
            goto err;
        if (FUNC3(bp, "\n") <= 0)
            goto err;

        pkey = FUNC17(x);
        if (pkey == NULL) {
            FUNC2(bp, "%12sUnable to load Public Key\n", "");
            FUNC6(bp);
        } else {
            FUNC8(bp, pkey, 16, NULL);
        }
    }

    if (!(cflag & X509_FLAG_NO_IDS)) {
        const ASN1_BIT_STRING *iuid, *suid;
        FUNC20(x, &iuid, &suid);
        if (iuid != NULL) {
            if (FUNC2(bp, "%8sIssuer Unique ID: ", "") <= 0)
                goto err;
            if (!FUNC26(bp, iuid, 12))
                goto err;
        }
        if (suid != NULL) {
            if (FUNC2(bp, "%8sSubject Unique ID: ", "") <= 0)
                goto err;
            if (!FUNC26(bp, suid, 12))
                goto err;
        }
    }

    if (!(cflag & X509_FLAG_NO_EXTENSIONS))
        FUNC10(bp, "X509v3 extensions",
                                FUNC14(x), cflag, 8);

    if (!(cflag & X509_FLAG_NO_SIGDUMP)) {
        const X509_ALGOR *sig_alg;
        const ASN1_BIT_STRING *sig;
        FUNC18(&sig, &sig_alg, x);
        if (FUNC27(bp, sig_alg, sig) <= 0)
            goto err;
    }
    if (!(cflag & X509_FLAG_NO_AUX)) {
        if (!FUNC13(bp, x, 0))
            goto err;
    }
    ret = 1;
 err:
    FUNC9(m);
    return ret;
}