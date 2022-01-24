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
struct TYPE_7__ {char* name; int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parameters; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_2__ INFOPAIR ;

/* Variables and functions */
 int /*<<< orphan*/  OPENSSL_VERSION_STR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* OSSL_PROV_PARAM_MODULE_FILENAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(const OSSL_PROVIDER *prov, OSSL_PARAM params[])
{
    int i;
    OSSL_PARAM *p;

    if ((p = FUNC0(params, "openssl-version")) != NULL)
        FUNC1(p, OPENSSL_VERSION_STR);
    if ((p = FUNC0(params, "provider-name")) != NULL)
        FUNC1(p, prov->name);

#ifndef FIPS_MODE
    if ((p = FUNC0(params, OSSL_PROV_PARAM_MODULE_FILENAME)) != NULL)
        FUNC1(p, FUNC2(prov));
#endif

    if (prov->parameters == NULL)
        return 1;

    for (i = 0; i < FUNC3(prov->parameters); i++) {
        INFOPAIR *pair = FUNC4(prov->parameters, i);

        if ((p = FUNC0(params, pair->name)) != NULL)
            FUNC1(p, pair->value);
    }
    return 1;
}