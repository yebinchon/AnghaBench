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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC3(const char *prov_name)
{
    int ret = 0;
    OSSL_PROVIDER *prov = NULL;

    prov = FUNC1(NULL, prov_name);
    if (prov == NULL) {
        FUNC0(bio_err, "Failed to load FIPS module\n");
        goto end;
    }
    ret = 1;
end:
    FUNC2(prov);
    return ret;
}