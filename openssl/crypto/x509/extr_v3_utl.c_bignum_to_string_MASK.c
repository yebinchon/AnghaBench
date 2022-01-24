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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  X509V3_F_BIGNUM_TO_STRING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static char *FUNC9(const BIGNUM *bn)
{
    char *tmp, *ret;
    size_t len;

    /*
     * Display large numbers in hex and small numbers in decimal. Converting to
     * decimal takes quadratic time and is no more useful than hex for large
     * numbers.
     */
    if (FUNC2(bn) < 128)
        return FUNC0(bn);

    tmp = FUNC1(bn);
    if (tmp == NULL)
        return NULL;

    len = FUNC8(tmp) + 3;
    ret = FUNC4(len);
    if (ret == NULL) {
        FUNC7(X509V3_F_BIGNUM_TO_STRING, ERR_R_MALLOC_FAILURE);
        FUNC3(tmp);
        return NULL;
    }

    /* Prepend "0x", but place it after the "-" if negative. */
    if (tmp[0] == '-') {
        FUNC6(ret, "-0x", len);
        FUNC5(ret, tmp + 1, len);
    } else {
        FUNC6(ret, "0x", len);
        FUNC5(ret, tmp, len);
    }
    FUNC3(tmp);
    return ret;
}