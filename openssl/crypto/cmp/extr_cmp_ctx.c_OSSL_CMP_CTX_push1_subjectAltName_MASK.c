#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * subjectAltNames; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_MULTIPLE_SAN_SOURCES ; 
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(OSSL_CMP_CTX *ctx,
                                      const GENERAL_NAME *name)
{
    GENERAL_NAME *name_dup;

    if (ctx == NULL || name == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (FUNC3(ctx) == 1) {
        FUNC0(0, CMP_R_MULTIPLE_SAN_SOURCES);
        return 0;
    }

    if (ctx->subjectAltNames == NULL
            && (ctx->subjectAltNames = FUNC4()) == NULL)
        return 0;
    if ((name_dup = FUNC1(name)) == NULL)
        return 0;
    if (!FUNC5(ctx->subjectAltNames, name_dup)) {
        FUNC2(name_dup);
        return 0;
    }
    return 1;
}