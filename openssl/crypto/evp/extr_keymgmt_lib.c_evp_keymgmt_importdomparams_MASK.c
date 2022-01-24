#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* (* importdomparams ) (void*,int /*<<< orphan*/  const*) ;} ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_KEYMGMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/  const*) ; 

void *FUNC3(const EVP_KEYMGMT *keymgmt,
                                  const OSSL_PARAM params[])
{
    void *provctx = FUNC1(FUNC0(keymgmt));

    return keymgmt->importdomparams(provctx, params);
}