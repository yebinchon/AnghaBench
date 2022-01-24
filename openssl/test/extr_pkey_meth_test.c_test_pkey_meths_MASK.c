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
typedef  int /*<<< orphan*/  EVP_PKEY_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    size_t i;
    int prev = -1;
    int good = 1;
    int pkey_id;
    const EVP_PKEY_METHOD *pmeth;

    for (i = 0; i < FUNC2(); i++) {
        pmeth = FUNC0(i);
        FUNC1(&pkey_id, NULL, pmeth);
        if (pkey_id < prev)
            good = 0;
        prev = pkey_id;

    }
    if (!good) {
        FUNC4("EVP_PKEY_METHOD table out of order");
        for (i = 0; i < FUNC2(); i++) {
            pmeth = FUNC0(i);
            FUNC1(&pkey_id, NULL, pmeth);
            FUNC5("%d : %s", pkey_id, FUNC3(pkey_id));
        }
    }
    return good;
}