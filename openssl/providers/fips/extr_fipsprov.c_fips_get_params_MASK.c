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
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 char* OPENSSL_FULL_VERSION_STR ; 
 char* OPENSSL_VERSION_STR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  OSSL_PROV_PARAM_BUILDINFO ; 
 int /*<<< orphan*/  OSSL_PROV_PARAM_NAME ; 
 int /*<<< orphan*/  OSSL_PROV_PARAM_VERSION ; 

__attribute__((used)) static int FUNC2(const OSSL_PROVIDER *prov, OSSL_PARAM params[])
{
    OSSL_PARAM *p;

    p = FUNC0(params, OSSL_PROV_PARAM_NAME);
    if (p != NULL && !FUNC1(p, "OpenSSL FIPS Provider"))
        return 0;
    p = FUNC0(params, OSSL_PROV_PARAM_VERSION);
    if (p != NULL && !FUNC1(p, OPENSSL_VERSION_STR))
        return 0;
    p = FUNC0(params, OSSL_PROV_PARAM_BUILDINFO);
    if (p != NULL && !FUNC1(p, OPENSSL_FULL_VERSION_STR))
        return 0;

    return 1;
}