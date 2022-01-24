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
#define  ASN1_PKEY_CTRL_CMS_ENVELOPE 129 
#define  ASN1_PKEY_CTRL_CMS_RI_TYPE 128 
 int CMS_RECIPINFO_AGREE ; 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
#ifndef OPENSSL_NO_CMS

    case ASN1_PKEY_CTRL_CMS_ENVELOPE:
        if (arg1 == 1)
            return FUNC0(arg2);
        else if (arg1 == 0)
            return FUNC1(arg2);
        return -2;

    case ASN1_PKEY_CTRL_CMS_RI_TYPE:
        *(int *)arg2 = CMS_RECIPINFO_AGREE;
        return 1;
#endif
    default:
        return -2;
    }

}