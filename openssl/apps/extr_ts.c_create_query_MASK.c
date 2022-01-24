#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_5__* parameter; int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  TS_REQ ;
typedef  int /*<<< orphan*/  TS_MSG_IMPRINT ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  NONCE_LENGTH ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 TYPE_1__* FUNC21 () ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC22 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (char const*) ; 

__attribute__((used)) static TS_REQ *FUNC25(BIO *data_bio, const char *digest, const EVP_MD *md,
                            const char *policy, int no_nonce, int cert)
{
    int ret = 0;
    TS_REQ *ts_req = NULL;
    int len;
    TS_MSG_IMPRINT *msg_imprint = NULL;
    X509_ALGOR *algo = NULL;
    unsigned char *data = NULL;
    ASN1_OBJECT *policy_obj = NULL;
    ASN1_INTEGER *nonce_asn1 = NULL;

    if (md == NULL && (md = FUNC6("sha256")) == NULL)
        goto err;
    if ((ts_req = FUNC14()) == NULL)
        goto err;
    if (!FUNC19(ts_req, 1))
        goto err;
    if ((msg_imprint = FUNC10()) == NULL)
        goto err;
    if ((algo = FUNC21()) == NULL)
        goto err;
    if ((algo->algorithm = FUNC7(FUNC5(md))) == NULL)
        goto err;
    if ((algo->parameter = FUNC2()) == NULL)
        goto err;
    algo->parameter->type = V_ASN1_NULL;
    if (!FUNC11(msg_imprint, algo))
        goto err;
    if ((len = FUNC22(data_bio, digest, md, &data)) == 0)
        goto err;
    if (!FUNC12(msg_imprint, data, len))
        goto err;
    if (!FUNC16(ts_req, msg_imprint))
        goto err;
    if (policy && (policy_obj = FUNC24(policy)) == NULL)
        goto err;
    if (policy_obj && !FUNC18(ts_req, policy_obj))
        goto err;

    /* Setting nonce if requested. */
    if (!no_nonce && (nonce_asn1 = FUNC23(NONCE_LENGTH)) == NULL)
        goto err;
    if (nonce_asn1 && !FUNC17(ts_req, nonce_asn1))
        goto err;
    if (!FUNC15(ts_req, cert))
        goto err;

    ret = 1;
 err:
    if (!ret) {
        FUNC13(ts_req);
        ts_req = NULL;
        FUNC3(bio_err, "could not create query\n");
        FUNC4(bio_err);
    }
    FUNC9(msg_imprint);
    FUNC20(algo);
    FUNC8(data);
    FUNC1(policy_obj);
    FUNC0(nonce_asn1);
    return ts_req;
}