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
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,size_t,int,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char const*,char const*,size_t,int /*<<< orphan*/  const**,int*,size_t*,int /*<<< orphan*/ **) ; 

int FUNC6(OSSL_PARAM *to,
                                  const OSSL_PARAM *paramdefs,
                                  const char *key, const char *value,
                                  size_t value_n)
{
    const OSSL_PARAM *paramdef = NULL;
    int ishex = 0;
    void *buf = NULL;
    size_t buf_n = 0;
    BIGNUM *tmpbn = NULL;
    int ok = 0;

    if (to == NULL || paramdefs == NULL)
        return 0;

    if (!FUNC5(paramdefs, key, value, value_n,
                           &paramdef, &ishex, &buf_n, &tmpbn))
        return 0;

    if ((buf = FUNC3(buf_n > 0 ? buf_n : 1)) == NULL) {
        FUNC1(0, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ok = FUNC4(to, paramdef, value, value_n, ishex,
                             buf, buf_n, tmpbn);
    FUNC0(tmpbn);
    if (!ok)
        FUNC2(buf);
    return ok;
}