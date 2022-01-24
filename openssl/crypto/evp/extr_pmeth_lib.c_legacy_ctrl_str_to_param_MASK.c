#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* signature; } ;
struct TYPE_11__ {TYPE_2__ sig; } ;
struct TYPE_12__ {TYPE_3__ op; } ;
struct TYPE_9__ {int /*<<< orphan*/  prov; } ;
typedef  TYPE_4__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(EVP_PKEY_CTX *ctx, const char *name,
                                    const char *value)
{
#ifndef OPENSSL_NO_DH
    if (FUNC7(name, "dh_pad") == 0) {
        int pad;

        pad = FUNC5(value);
        return FUNC3(ctx, pad);
    }
#endif
    if (FUNC7(name, "digest") == 0) {
        int ret;
        EVP_MD *md;

        if (!FUNC2(ctx) || ctx->op.sig.signature == NULL)
            return 0;
        md = FUNC0(FUNC6(ctx->op.sig.signature->prov),
                          value, NULL);
        if (md == NULL)
            return 0;
        ret = FUNC4(ctx, md);
        FUNC1(md);
        return ret;
    }

    return 0;
}