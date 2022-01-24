#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  HMAC_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int) ; 
 size_t SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  enc_key ; 
 int /*<<< orphan*/  mac_key ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,void const*,size_t) ; 

__attribute__((used)) static int FUNC16(BIO *rbio, unsigned char type, uint64_t seqnr,
                       const void *msg, size_t len)
{
    /* Note that the order of the record header fields on the wire,
     * and in the HMAC, is different. So we just keep them in separate
     * variables and handle them individually. */
    static unsigned char epoch[2] = { 0x00, 0x01 };
    static unsigned char seq[6] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
    static unsigned char ver[2] = { 0x01, 0x00 }; /* DTLS1_BAD_VER */
    unsigned char lenbytes[2];
    HMAC_CTX *ctx;
    EVP_CIPHER_CTX *enc_ctx;
    unsigned char iv[16];
    unsigned char pad;
    unsigned char *enc;

    seq[0] = (seqnr >> 40) & 0xff;
    seq[1] = (seqnr >> 32) & 0xff;
    seq[2] = (seqnr >> 24) & 0xff;
    seq[3] = (seqnr >> 16) & 0xff;
    seq[4] = (seqnr >> 8) & 0xff;
    seq[5] = seqnr & 0xff;

    pad = 15 - ((len + SHA_DIGEST_LENGTH) % 16);
    enc = FUNC13(len + SHA_DIGEST_LENGTH + 1 + pad);
    if (enc == NULL)
        return 0;

    /* Copy record to encryption buffer */
    FUNC15(enc, msg, len);

    /* Append HMAC to data */
    ctx = FUNC8();
    FUNC10(ctx, mac_key, 20, FUNC6(), NULL);
    FUNC11(ctx, epoch, 2);
    FUNC11(ctx, seq, 6);
    FUNC11(ctx, &type, 1);
    FUNC11(ctx, ver, 2); /* Version */
    lenbytes[0] = (unsigned char)(len >> 8);
    lenbytes[1] = (unsigned char)(len);
    FUNC11(ctx, lenbytes, 2); /* Length */
    FUNC11(ctx, enc, len); /* Finally the data itself */
    FUNC9(ctx, enc + len, NULL);
    FUNC7(ctx);

    /* Append padding bytes */
    len += SHA_DIGEST_LENGTH;
    do {
        enc[len++] = pad;
    } while (len % 16);

    /* Generate IV, and encrypt */
    FUNC14(iv, sizeof(iv));
    enc_ctx = FUNC2();
    FUNC4(enc_ctx, FUNC5(), NULL, enc_key, iv, 1);
    FUNC3(enc_ctx, enc, enc, len);
    FUNC1(enc_ctx);

    /* Finally write header (from fragmented variables), IV and encrypted record */
    FUNC0(rbio, &type, 1);
    FUNC0(rbio, ver, 2);
    FUNC0(rbio, epoch, 2);
    FUNC0(rbio, seq, 6);
    lenbytes[0] = (unsigned char)((len + sizeof(iv)) >> 8);
    lenbytes[1] = (unsigned char)(len + sizeof(iv));
    FUNC0(rbio, lenbytes, 2);

    FUNC0(rbio, iv, sizeof(iv));
    FUNC0(rbio, enc, len);

    FUNC12(enc);
    return 1;
}