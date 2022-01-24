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
typedef  unsigned char DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int DH_CHECK_P_NOT_PRIME ; 
 int DH_CHECK_P_NOT_SAFE_PRIME ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 int DH_UNABLE_TO_CHECK_GENERATOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int*) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/  const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  NID_ffdhe2048 ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(void)
{
    DH *a = NULL, *b = NULL;
    const BIGNUM *apub_key = NULL, *bpub_key = NULL;
    unsigned char *abuf = NULL;
    unsigned char *bbuf = NULL;
    int i, alen, blen, aout, bout;
    int ret = 0;

    if (!FUNC11(a = FUNC5(NID_ffdhe2048)))
         goto err;

    if (!FUNC0(a, &i))
        goto err;
    if (!FUNC9(i & DH_CHECK_P_NOT_PRIME)
            || !FUNC9(i & DH_CHECK_P_NOT_SAFE_PRIME)
            || !FUNC9(i & DH_UNABLE_TO_CHECK_GENERATOR)
            || !FUNC9(i & DH_NOT_SUITABLE_GENERATOR)
            || !FUNC9(i))
        goto err;

    if (!FUNC3(a))
        goto err;
    FUNC4(a, &apub_key, NULL);

    /* now create another copy of the DH group for the peer */
    if (!FUNC11(b = FUNC5(NID_ffdhe2048)))
        goto err;

    if (!FUNC3(b))
        goto err;
    FUNC4(b, &bpub_key, NULL);

    alen = FUNC6(a);
    if (!FUNC11(abuf = FUNC8(alen))
            || !FUNC12((aout = FUNC1(abuf, bpub_key, a)) != -1))
        goto err;

    blen = FUNC6(b);
    if (!FUNC11(bbuf = FUNC8(blen))
            || !FUNC12((bout = FUNC1(bbuf, apub_key, b)) != -1))
        goto err;

    if (!FUNC12(aout >= 20)
            || !FUNC10(abuf, aout, bbuf, bout))
        goto err;

    ret = 1;

 err:
    FUNC7(abuf);
    FUNC7(bbuf);
    FUNC2(a);
    FUNC2(b);
    return ret;
}