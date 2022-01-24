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

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  PKCS12_F_OPENSSL_UNI2ASC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *FUNC2(const unsigned char *uni, int unilen)
{
    int asclen, i;
    char *asctmp;
    /* string must contain an even number of bytes */
    if (unilen & 1)
        return NULL;
    asclen = unilen / 2;
    /* If no terminating zero allow for one */
    if (!unilen || uni[unilen - 1])
        asclen++;
    uni++;
    if ((asctmp = FUNC0(asclen)) == NULL) {
        FUNC1(PKCS12_F_OPENSSL_UNI2ASC, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    for (i = 0; i < unilen; i += 2)
        asctmp[i >> 1] = uni[i];
    asctmp[asclen - 1] = 0;
    return asctmp;
}