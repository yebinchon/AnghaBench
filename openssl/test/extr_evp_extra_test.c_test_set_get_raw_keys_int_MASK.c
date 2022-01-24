#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * priv; int /*<<< orphan*/ * pub; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* keys ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int tst, int pub)
{
    int ret = 0;
    unsigned char buf[80];
    unsigned char *in;
    size_t inlen, len = 0;
    EVP_PKEY *pkey;

    /* Check if this algorithm supports public keys */
    if (keys[tst].pub == NULL)
        return 1;

    FUNC8(buf, 0, sizeof(buf));

    if (pub) {
        inlen = FUNC9(keys[tst].pub);
        in = (unsigned char *)keys[tst].pub;
        pkey = FUNC4(keys[tst].type,
                                           NULL,
                                           in,
                                           inlen);
    } else {
        inlen = FUNC9(keys[tst].priv);
        in = (unsigned char *)keys[tst].priv;
        pkey = FUNC3(keys[tst].type,
                                            NULL,
                                            in,
                                            inlen);
    }

    if (!FUNC6(pkey)
            || (!pub && !FUNC7(FUNC1(pkey, NULL, &len)))
            || (pub && !FUNC7(FUNC2(pkey, NULL, &len)))
            || !FUNC7(len == inlen)
            || (!pub && !FUNC7(FUNC1(pkey, buf, &len)))
            || (pub && !FUNC7(FUNC2(pkey, buf, &len)))
            || !FUNC5(in, inlen, buf, len))
        goto done;

    ret = 1;
 done:
    FUNC0(pkey);
    return ret;
}