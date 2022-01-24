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
struct TYPE_8__ {struct TYPE_8__* value; struct TYPE_8__* name; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parameters; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;
typedef  TYPE_2__ INFOPAIR ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (char const*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC6(OSSL_PROVIDER *prov,
                                const char *name, const char *value)
{
    INFOPAIR *pair = NULL;

    if ((pair = FUNC3(sizeof(*pair))) != NULL
        && (prov->parameters != NULL
            || (prov->parameters = FUNC4()) != NULL)
        && (pair->name = FUNC2(name)) != NULL
        && (pair->value = FUNC2(value)) != NULL
        && FUNC5(prov->parameters, pair) > 0)
        return 1;

    if (pair != NULL) {
        FUNC1(pair->name);
        FUNC1(pair->value);
        FUNC1(pair);
    }
    FUNC0(CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER, ERR_R_MALLOC_FAILURE);
    return 0;
}