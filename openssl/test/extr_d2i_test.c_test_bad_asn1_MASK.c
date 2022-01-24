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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;

/* Variables and functions */
 scalar_t__ ASN1_BIO ; 
 int /*<<< orphan*/  ASN1_COMPARE ; 
 int /*<<< orphan*/  ASN1_DECODE ; 
 int /*<<< orphan*/  ASN1_ENCODE ; 
 int /*<<< orphan*/  ASN1_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned char const**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ expected_error ; 
 int /*<<< orphan*/  item_type ; 
 scalar_t__ FUNC15 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  test_file ; 

__attribute__((used)) static int FUNC16(void)
{
    BIO *bio = NULL;
    ASN1_VALUE *value = NULL;
    int ret = 0;
    unsigned char buf[2048];
    const unsigned char *buf_ptr = buf;
    unsigned char *der = NULL;
    int derlen;
    int len;

    bio = FUNC5(test_file, "r");
    if (!FUNC13(bio))
        return 0;

    if (expected_error == ASN1_BIO) {
        if (FUNC14(FUNC1(item_type, bio, NULL)))
            ret = 1;
        goto err;
    }

    /*
     * Unless we are testing it we don't use ASN1_item_d2i_bio because it
     * performs sanity checks on the input and can reject it before the
     * decoder is called.
     */
    len = FUNC6(bio, buf, sizeof(buf));
    if (!FUNC12(len, 0))
        goto err;

    value = FUNC0(NULL, &buf_ptr, len, item_type);
    if (value == NULL) {
        if (FUNC11(expected_error, ASN1_DECODE))
            ret = 1;
        goto err;
    }

    derlen = FUNC3(value, &der, item_type);

    if (der == NULL || derlen < 0) {
        if (FUNC11(expected_error, ASN1_ENCODE))
            ret = 1;
        goto err;
    }

    if (derlen != len || FUNC15(der, buf, derlen) != 0) {
        if (FUNC11(expected_error, ASN1_COMPARE))
            ret = 1;
        goto err;
    }

    if (FUNC11(expected_error, ASN1_OK))
        ret = 1;

 err:
    /* Don't indicate success for memory allocation errors */
    if (ret == 1
        && !FUNC10(FUNC7(FUNC8()) == ERR_R_MALLOC_FAILURE))
        ret = 0;
    FUNC4(bio);
    FUNC9(der);
    FUNC2(value, item_type);
    return ret;
}