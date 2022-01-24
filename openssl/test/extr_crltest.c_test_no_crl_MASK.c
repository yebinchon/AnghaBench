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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_V_ERR_UNABLE_TO_GET_CRL ; 
 int /*<<< orphan*/  X509_V_FLAG_CRL_CHECK ; 
 int /*<<< orphan*/  test_leaf ; 
 int /*<<< orphan*/  test_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
    return FUNC0(FUNC1(test_leaf, test_root, NULL,
                              X509_V_FLAG_CRL_CHECK),
                       X509_V_ERR_UNABLE_TO_GET_CRL);
}