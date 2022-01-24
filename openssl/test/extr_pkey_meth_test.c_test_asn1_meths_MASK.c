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
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(void)
{
    int i;
    int prev = -1;
    int good = 1;
    int pkey_id;
    const EVP_PKEY_ASN1_METHOD *ameth;

    for (i = 0; i < FUNC2(); i++) {
        ameth = FUNC0(i);
        FUNC1(&pkey_id, NULL, NULL, NULL, NULL, ameth);
        if (pkey_id < prev)
            good = 0;
        prev = pkey_id;

    }
    if (!good) {
        FUNC4("EVP_PKEY_ASN1_METHOD table out of order");
        for (i = 0; i < FUNC2(); i++) {
            const char *info;

            ameth = FUNC0(i);
            FUNC1(&pkey_id, NULL, NULL, &info, NULL, ameth);
            if (info == NULL)
                info = "<NO NAME>";
            FUNC5("%d : %s : %s", pkey_id, FUNC3(pkey_id), info);
        }
    }
    return good;
}