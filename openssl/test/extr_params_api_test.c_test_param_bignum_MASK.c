#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t len; int /*<<< orphan*/  value; } ;
struct TYPE_6__ {unsigned char* data; size_t data_size; size_t return_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int MAX_LEN ; 
 TYPE_1__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_PARAM_UNSIGNED_INTEGER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,size_t const) ; 
 TYPE_2__* raw_values ; 

__attribute__((used)) static int FUNC10(int n)
{
    unsigned char buf[MAX_LEN], bnbuf[MAX_LEN];
    const size_t len = raw_values[n].len;
    BIGNUM *b = NULL, *c = NULL;
    OSSL_PARAM param = FUNC2("bn", OSSL_PARAM_UNSIGNED_INTEGER,
                                       NULL, 0);
    int ret = 0;

    param.data = bnbuf;
    param.data_size = len;

    FUNC9(buf, raw_values[n].value, len);
    if (!FUNC7(b = FUNC1(raw_values[n].value, (int)len, NULL)))
        goto err;

    if (!FUNC8(FUNC4(&param, b))
        || !FUNC6(bnbuf, param.return_size, buf, param.return_size))
        goto err;
    param.data_size = param.return_size;
    if (!FUNC8(FUNC3(&param, &c))
        || !FUNC5(b, c))
        goto err;

    ret = 1;
err:
    FUNC0(b);
    FUNC0(c);
    return ret;
}