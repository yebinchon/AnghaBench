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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_ENUMERATED ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  X509V3_F_I2S_ASN1_ENUMERATED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

char *FUNC4(X509V3_EXT_METHOD *method, const ASN1_ENUMERATED *a)
{
    BIGNUM *bntmp = NULL;
    char *strtmp = NULL;

    if (!a)
        return NULL;
    if ((bntmp = FUNC0(a, NULL)) == NULL
        || (strtmp = FUNC3(bntmp)) == NULL)
        FUNC2(X509V3_F_I2S_ASN1_ENUMERATED, ERR_R_MALLOC_FAILURE);
    FUNC1(bntmp);
    return strtmp;
}