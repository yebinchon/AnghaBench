#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* freedomparams ) (void*) ;} ;
typedef  TYPE_1__ EVP_KEYMGMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void FUNC1(const EVP_KEYMGMT *keymgmt,
                               void *provdomparams)
{
    keymgmt->freedomparams(provdomparams);
}