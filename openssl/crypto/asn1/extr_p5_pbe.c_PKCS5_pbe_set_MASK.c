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
typedef  int /*<<< orphan*/  X509_ALGOR ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_PKCS5_PBE_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

X509_ALGOR *FUNC4(int alg, int iter,
                          const unsigned char *salt, int saltlen)
{
    X509_ALGOR *ret;
    ret = FUNC3();
    if (ret == NULL) {
        FUNC0(ASN1_F_PKCS5_PBE_SET, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (FUNC1(ret, alg, iter, salt, saltlen))
        return ret;

    FUNC2(ret);
    return NULL;
}