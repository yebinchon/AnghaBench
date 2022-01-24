#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* (* importkey ) (void*,int /*<<< orphan*/  const*) ;void* (* importdomparams ) (void*,int /*<<< orphan*/  const*) ;} ;
struct TYPE_10__ {TYPE_1__* pkeys; } ;
struct TYPE_9__ {int domainparams; void* provdata; TYPE_3__* keymgmt; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  TYPE_3__ EVP_KEYMGMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,int /*<<< orphan*/  const*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/  const*) ; 

void *FUNC6(EVP_PKEY *target, EVP_KEYMGMT *keymgmt,
                           const OSSL_PARAM params[], int domainparams)
{
    void *provctx = FUNC3(FUNC0(keymgmt));
    void *provdata = domainparams
        ? keymgmt->importdomparams(provctx, params)
        : keymgmt->importkey(provctx, params);

    FUNC2(target);
    if (provdata != NULL) {
        FUNC1(keymgmt);
        target->pkeys[0].keymgmt = keymgmt;
        target->pkeys[0].provdata = provdata;
        target->pkeys[0].domainparams = domainparams;
    }

    return provdata;
}