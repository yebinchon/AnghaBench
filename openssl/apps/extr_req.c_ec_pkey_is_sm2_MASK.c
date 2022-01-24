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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_EC ; 
 scalar_t__ EVP_PKEY_SM2 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ NID_sm2 ; 

__attribute__((used)) static int FUNC4(EVP_PKEY *pkey)
{
    EC_KEY *eckey = NULL;
    const EC_GROUP *group = NULL;

    if (FUNC3(pkey) == EVP_PKEY_SM2)
        return 1;
    if (FUNC3(pkey) == EVP_PKEY_EC
            && (eckey = FUNC2(pkey)) != NULL
            && (group = FUNC1(eckey)) != NULL
            && FUNC0(group) == NID_sm2)
        return 1;
    return 0;
}