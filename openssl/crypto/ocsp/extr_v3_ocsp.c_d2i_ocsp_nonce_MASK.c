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
typedef  void ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char const*,long) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OCSP_F_D2I_OCSP_NONCE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *a, const unsigned char **pp, long length)
{
    ASN1_OCTET_STRING *os, **pos;
    pos = a;
    if (pos == NULL || *pos == NULL) {
        os = FUNC1();
        if (os == NULL)
            goto err;
    } else {
        os = *pos;
    }
    if (!FUNC2(os, *pp, length))
        goto err;

    *pp += length;

    if (pos)
        *pos = os;
    return os;

 err:
    if ((pos == NULL) || (*pos != os))
        FUNC0(os);
    FUNC3(OCSP_F_D2I_OCSP_NONCE, ERR_R_MALLOC_FAILURE);
    return NULL;
}