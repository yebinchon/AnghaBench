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
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 size_t FUNC0 (char const* const*) ; 
 void* ossl_property_false ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const* const,int) ; 
 void* ossl_property_true ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3(OPENSSL_CTX *ctx)
{
    static const char *const predefined_names[] = {
        "default",      /* Being provided by the default built-in provider */
        "legacy",       /* Provided by the legacy provider */
        "provider",     /* Name of provider (default, fips) */
        "version",      /* Version number of this provider */
        "fips",         /* FIPS supporting provider */
        "engine",       /* An old style engine masquerading as a provider */
    };
    size_t i;

    for (i = 0; i < FUNC0(predefined_names); i++)
        if (FUNC1(ctx, predefined_names[i], 1) == 0)
            goto err;

    /* Pre-populate the two Boolean values */
    if ((ossl_property_true = FUNC2(ctx, "yes", 1)) == 0
        || (ossl_property_false = FUNC2(ctx, "no", 1)) == 0)
        goto err;

    return 1;
err:
    return 0;
}