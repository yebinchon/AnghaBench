#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {unsigned char* data; int /*<<< orphan*/  rec_version; int /*<<< orphan*/  type; } ;
struct TYPE_19__ {TYPE_3__* new_cipher; } ;
struct TYPE_20__ {TYPE_1__ tmp; } ;
struct TYPE_21__ {struct TYPE_21__* enc_read_ctx; struct TYPE_21__* enc_write_ctx; int /*<<< orphan*/  read_iv; int /*<<< orphan*/  write_iv; int /*<<< orphan*/  rlayer; TYPE_2__ s3; } ;
typedef  TYPE_3__ SSL_CTX ;
typedef  TYPE_4__ SSL3_RECORD ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 void* FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t SEQ_NUM_SIZE ; 
 int /*<<< orphan*/  SSL3_RT_APPLICATION_DATA ; 
 TYPE_3__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS13_AES_128_GCM_SHA256_BYTES ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * refdata ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC25(void)
{
    SSL_CTX *ctx = NULL;
    SSL *s = NULL;
    SSL3_RECORD rec;
    unsigned char *key = NULL, *iv = NULL, *seq = NULL;
    const EVP_CIPHER *ciph = FUNC3();
    int ret = 0;
    size_t ivlen, ctr;

    /*
     * Encrypted TLSv1.3 records always have an outer content type of
     * application data, and a record version of TLSv1.2.
     */
    rec.data = NULL;
    rec.type = SSL3_RT_APPLICATION_DATA;
    rec.rec_version = TLS1_2_VERSION;

    ctx = FUNC10(FUNC20());
    if (!FUNC17(ctx)) {
        FUNC14("Failed creating SSL_CTX");
        goto err;
    }

    s = FUNC12(ctx);
    if (!FUNC17(s)) {
        FUNC14("Failed creating SSL");
        goto err;
    }

    s->enc_read_ctx = FUNC0();
    if (!FUNC17(s->enc_read_ctx))
        goto err;

    s->enc_write_ctx = FUNC0();
    if (!FUNC17(s->enc_write_ctx))
        goto err;

    s->s3.tmp.new_cipher = FUNC8(s, TLS13_AES_128_GCM_SHA256_BYTES);
    if (!FUNC17(s->s3.tmp.new_cipher)) {
        FUNC14("Failed to find cipher");
        goto err;
    }

    for (ctr = 0; ctr < FUNC5(refdata); ctr++) {
        /* Load the record */
        ivlen = FUNC1(ciph);
        if (!FUNC21(&rec, &refdata[ctr], &key, s->read_iv, ivlen,
                         FUNC6(&s->rlayer))) {
            FUNC13("Failed loading key into EVP_CIPHER_CTX");
            goto err;
        }

        /* Set up the read/write sequences */
        FUNC22(FUNC7(&s->rlayer),
               FUNC6(&s->rlayer), SEQ_NUM_SIZE);
        FUNC22(s->write_iv, s->read_iv, ivlen);

        /* Load the key into the EVP_CIPHER_CTXs */
        if (FUNC2(s->enc_write_ctx, ciph, NULL, key, NULL, 1) <= 0
                || FUNC2(s->enc_read_ctx, ciph, NULL, key, NULL, 0)
                   <= 0) {
            FUNC13("Failed loading key into EVP_CIPHER_CTX\n");
            goto err;
        }

        /* Encrypt it */
        if (!FUNC18(FUNC24(s, &rec, 1, 1), 1)) {
            FUNC14("Failed to encrypt record %zu", ctr);
            goto err;
        }
        if (!FUNC19(FUNC23(&rec, &refdata[ctr], 1))) {
            FUNC14("Record %zu encryption test failed", ctr);
            goto err;
        }

        /* Decrypt it */
        if (!FUNC15(FUNC24(s, &rec, 1, 0), 1)) {
            FUNC14("Failed to decrypt record %zu", ctr);
            goto err;
        }
        if (!FUNC19(FUNC23(&rec, &refdata[ctr], 0))) {
            FUNC14("Record %zu decryption test failed", ctr);
            goto err;
        }

        FUNC4(rec.data);
        FUNC4(key);
        FUNC4(iv);
        FUNC4(seq);
        rec.data = NULL;
        key = NULL;
        iv = NULL;
        seq = NULL;
    }

    FUNC16("PASS: %zu records tested", ctr);
    ret = 1;

 err:
    FUNC4(rec.data);
    FUNC4(key);
    FUNC4(iv);
    FUNC4(seq);
    FUNC11(s);
    FUNC9(ctx);
    return ret;
}