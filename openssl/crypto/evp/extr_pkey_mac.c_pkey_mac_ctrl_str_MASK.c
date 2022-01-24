#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_2__ MAC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MAC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* OSSL_MAC_PARAM_DIGEST ; 
 char* OSSL_MAC_PARAM_SIZE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char const*,scalar_t__) ; 
 TYPE_1__ FUNC6 () ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(EVP_PKEY_CTX *ctx,
                              const char *type, const char *value)
{
    MAC_PKEY_CTX *hctx = FUNC3(ctx);
    const EVP_MAC *mac = FUNC0(hctx->ctx);
    OSSL_PARAM params[2];
    int ok = 0;

    /*
     * Translation of some control names that are equivalent to a single
     * parameter name.
     *
     * "md" and "digest" are the same thing, we use the single "digest"
     *
     * "digestsize" was a setting control in siphash, but naming wise,
     * it's really the same as "size".
     */
    if (FUNC7(type, "md") == 0)
        type = OSSL_MAC_PARAM_DIGEST;
    else if (FUNC7(type, "digestsize") == 0)
        type = OSSL_MAC_PARAM_SIZE;

    if (!FUNC5(&params[0],
                                       FUNC2(mac),
                                       type, value, FUNC8(value) + 1))
        return 0;
    params[1] = FUNC6();
    ok = FUNC1(hctx->ctx, params);
    FUNC4(params[0].data);
    return ok;
}