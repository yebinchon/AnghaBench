#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char* write_mac_secret; unsigned char* read_mac_secret; } ;
struct TYPE_8__ {int /*<<< orphan*/  enc_read_ctx; int /*<<< orphan*/ * read_hash; int /*<<< orphan*/  rlayer; TYPE_1__ s3; int /*<<< orphan*/ * write_hash; } ;
struct TYPE_7__ {unsigned char type; int length; unsigned char* input; int /*<<< orphan*/  orig_len; } ;
typedef  TYPE_2__ SSL3_RECORD ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_CIPH_CBC_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*,unsigned char*,size_t*,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,unsigned char*,size_t,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 unsigned char* ssl3_pad_1 ; 
 unsigned char* ssl3_pad_2 ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 

int FUNC14(SSL *ssl, SSL3_RECORD *rec, unsigned char *md, int sending)
{
    unsigned char *mac_sec, *seq;
    const EVP_MD_CTX *hash;
    unsigned char *p, rec_char;
    size_t md_size;
    size_t npad;
    int t;

    if (sending) {
        mac_sec = &(ssl->s3.write_mac_secret[0]);
        seq = FUNC8(&ssl->rlayer);
        hash = ssl->write_hash;
    } else {
        mac_sec = &(ssl->s3.read_mac_secret[0]);
        seq = FUNC7(&ssl->rlayer);
        hash = ssl->read_hash;
    }

    t = FUNC6(hash);
    if (t < 0)
        return 0;
    md_size = t;
    npad = (48 / md_size) * md_size;

    if (!sending &&
        FUNC0(ssl->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
        FUNC12(hash)) {
        /*
         * This is a CBC-encrypted record. We must avoid leaking any
         * timing-side channel information about how many blocks of data we
         * are hashing because that gives an attacker a timing-oracle.
         */

        /*-
         * npad is, at most, 48 bytes and that's with MD5:
         *   16 + 48 + 8 (sequence bytes) + 1 + 2 = 75.
         *
         * With SHA-1 (the largest hash speced for SSLv3) the hash size
         * goes up 4, but npad goes down by 8, resulting in a smaller
         * total size.
         */
        unsigned char header[75];
        size_t j = 0;
        FUNC9(header + j, mac_sec, md_size);
        j += md_size;
        FUNC9(header + j, ssl3_pad_1, npad);
        j += npad;
        FUNC9(header + j, seq, 8);
        j += 8;
        header[j++] = rec->type;
        header[j++] = (unsigned char)(rec->length >> 8);
        header[j++] = (unsigned char)(rec->length & 0xff);

        /* Final param == is SSLv3 */
        if (FUNC11(hash,
                                   md, &md_size,
                                   header, rec->input,
                                   rec->length + md_size, rec->orig_len,
                                   mac_sec, md_size, 1) <= 0)
            return 0;
    } else {
        unsigned int md_size_u;
        /* Chop the digest off the end :-) */
        EVP_MD_CTX *md_ctx = FUNC5();

        if (md_ctx == NULL)
            return 0;

        rec_char = rec->type;
        p = md;
        FUNC10(rec->length, p);
        if (FUNC3(md_ctx, hash) <= 0
            || FUNC2(md_ctx, mac_sec, md_size) <= 0
            || FUNC2(md_ctx, ssl3_pad_1, npad) <= 0
            || FUNC2(md_ctx, seq, 8) <= 0
            || FUNC2(md_ctx, &rec_char, 1) <= 0
            || FUNC2(md_ctx, md, 2) <= 0
            || FUNC2(md_ctx, rec->input, rec->length) <= 0
            || FUNC1(md_ctx, md, NULL) <= 0
            || FUNC3(md_ctx, hash) <= 0
            || FUNC2(md_ctx, mac_sec, md_size) <= 0
            || FUNC2(md_ctx, ssl3_pad_2, npad) <= 0
            || FUNC2(md_ctx, md, md_size) <= 0
            || FUNC1(md_ctx, md, &md_size_u) <= 0) {
            FUNC4(md_ctx);
            return 0;
        }

        FUNC4(md_ctx);
    }

    FUNC13(seq);
    return 1;
}