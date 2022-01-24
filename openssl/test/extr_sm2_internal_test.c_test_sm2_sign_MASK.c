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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  fake_rand_bytes_offset ; 
 int /*<<< orphan*/  fake_rand_size ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t const) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 size_t FUNC21 (char const*) ; 

__attribute__((used)) static int FUNC22(const EC_GROUP *group,
                         const char *userid,
                         const char *privkey_hex,
                         const char *message,
                         const char *k_hex,
                         const char *r_hex,
                         const char *s_hex)
{
    const size_t msg_len = FUNC21(message);
    int ok = 0;
    BIGNUM *priv = NULL;
    EC_POINT *pt = NULL;
    EC_KEY *key = NULL;
    ECDSA_SIG *sig = NULL;
    const BIGNUM *sig_r = NULL;
    const BIGNUM *sig_s = NULL;
    BIGNUM *r = NULL;
    BIGNUM *s = NULL;

    if (!FUNC16(FUNC1(&priv, privkey_hex)))
        goto done;

    key = FUNC5();
    if (!FUNC14(key)
            || !FUNC16(FUNC6(key, group))
            || !FUNC16(FUNC7(key, priv)))
        goto done;

    pt = FUNC11(group);
    if (!FUNC14(pt)
            || !FUNC16(FUNC10(group, pt, priv, NULL, NULL, NULL))
            || !FUNC16(FUNC8(key, pt)))
        goto done;

    FUNC20(k_hex);
    sig = FUNC18(key, FUNC12(), (const uint8_t *)userid, FUNC21(userid),
                      (const uint8_t *)message, msg_len);
    if (!FUNC14(sig)
            || !FUNC15(fake_rand_bytes_offset, fake_rand_size)) {
        FUNC17();
        goto done;
    }
    FUNC17();

    FUNC3(sig, &sig_r, &sig_s);

    if (!FUNC16(FUNC1(&r, r_hex))
            || !FUNC16(FUNC1(&s, s_hex))
            || !FUNC13(r, sig_r)
            || !FUNC13(s, sig_s))
        goto done;

    ok = FUNC19(key, FUNC12(), sig, (const uint8_t *)userid,
                       FUNC21(userid), (const uint8_t *)message, msg_len);

    /* We goto done whether this passes or fails */
    FUNC16(ok);

 done:
    FUNC2(sig);
    FUNC9(pt);
    FUNC4(key);
    FUNC0(priv);
    FUNC0(r);
    FUNC0(s);

    return ok;
}