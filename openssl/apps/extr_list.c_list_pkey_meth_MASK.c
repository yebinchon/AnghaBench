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
 int ASN1_PKEY_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/  const*) ; 
 size_t FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  bio_out ; 

__attribute__((used)) static void FUNC5(void)
{
    size_t i;
    size_t meth_count = FUNC3();

    for (i = 0; i < meth_count; i++) {
        const EVP_PKEY_METHOD *pmeth = FUNC1(i);
        int pkey_id, pkey_flags;

        FUNC2(&pkey_id, &pkey_flags, pmeth);
        FUNC0(bio_out, "%s\n", FUNC4(pkey_id));
        FUNC0(bio_out, "\tType: %s Algorithm\n",
                   pkey_flags & ASN1_PKEY_DYNAMIC ?  "External" : "Builtin");
    }
}