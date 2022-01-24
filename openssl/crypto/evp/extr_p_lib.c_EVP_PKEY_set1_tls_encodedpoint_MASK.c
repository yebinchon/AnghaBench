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
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_PKEY_CTRL_SET1_TLS_ENCPT ; 
 size_t INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,void*) ; 

int FUNC1(EVP_PKEY *pkey,
                               const unsigned char *pt, size_t ptlen)
{
    if (ptlen > INT_MAX)
        return 0;
    if (FUNC0(pkey, ASN1_PKEY_CTRL_SET1_TLS_ENCPT, ptlen,
                           (void *)pt) <= 0)
        return 0;
    return 1;
}