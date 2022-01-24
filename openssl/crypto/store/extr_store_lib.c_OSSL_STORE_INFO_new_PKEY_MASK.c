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
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_INFO_NEW_PKEY ; 
 int /*<<< orphan*/  OSSL_STORE_INFO_PKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OSSL_STORE_INFO *FUNC2(EVP_PKEY *pkey)
{
    OSSL_STORE_INFO *info = FUNC1(OSSL_STORE_INFO_PKEY, pkey);

    if (info == NULL)
        FUNC0(OSSL_STORE_F_OSSL_STORE_INFO_NEW_PKEY,
                      ERR_R_MALLOC_FAILURE);
    return info;
}