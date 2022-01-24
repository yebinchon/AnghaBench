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
typedef  unsigned char uint8_t ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  unsigned char EC_POINT ;
typedef  unsigned char EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (size_t,size_t const) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fake_rand_bytes_offset ; 
 int /*<<< orphan*/  fake_rand_size ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/  const*,size_t const,size_t*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,int /*<<< orphan*/  const*,unsigned char*,size_t,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,int /*<<< orphan*/  const*,unsigned char const*,size_t const,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*,int /*<<< orphan*/  const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 size_t FUNC24 (char const*) ; 

__attribute__((used)) static int FUNC25(const EC_GROUP *group,
                          const EVP_MD *digest,
                          const char *privkey_hex,
                          const char *message,
                          const char *k_hex, const char *ctext_hex)
{
    const size_t msg_len = FUNC24(message);
    BIGNUM *priv = NULL;
    EC_KEY *key = NULL;
    EC_POINT *pt = NULL;
    unsigned char *expected = FUNC11(ctext_hex, NULL);
    size_t ctext_len = 0;
    size_t ptext_len = 0;
    uint8_t *ctext = NULL;
    uint8_t *recovered = NULL;
    size_t recovered_len = msg_len;
    int rc = 0;

    if (!FUNC15(expected)
            || !FUNC17(FUNC1(&priv, privkey_hex)))
        goto done;

    key = FUNC3();
    if (!FUNC15(key)
            || !FUNC17(FUNC4(key, group))
            || !FUNC17(FUNC5(key, priv)))
        goto done;

    pt = FUNC9(group);
    if (!FUNC15(pt)
            || !FUNC17(FUNC8(group, pt, priv, NULL, NULL, NULL))
            || !FUNC17(FUNC6(key, pt))
            || !FUNC17(FUNC19(key, digest, msg_len, &ctext_len)))
        goto done;

    ctext = FUNC12(ctext_len);
    if (!FUNC15(ctext))
        goto done;

    FUNC23(k_hex);
    if (!FUNC17(FUNC21(key, digest, (const uint8_t *)message, msg_len,
                               ctext, &ctext_len))
            || !FUNC16(fake_rand_bytes_offset, fake_rand_size)) {
        FUNC18();
        goto done;
    }
    FUNC18();

    if (!FUNC14(ctext, ctext_len, expected, ctext_len))
        goto done;

    if (!FUNC17(FUNC22(key, digest, ctext_len, &ptext_len))
            || !FUNC13(ptext_len, msg_len))
        goto done;

    recovered = FUNC12(ptext_len);
    if (!FUNC15(recovered)
            || !FUNC17(FUNC20(key, digest, ctext, ctext_len, recovered, &recovered_len))
            || !FUNC13(recovered_len, msg_len)
            || !FUNC14(recovered, recovered_len, message, msg_len))
        goto done;

    rc = 1;
 done:
    FUNC0(priv);
    FUNC7(pt);
    FUNC10(ctext);
    FUNC10(recovered);
    FUNC10(expected);
    FUNC2(key);
    return rc;
}