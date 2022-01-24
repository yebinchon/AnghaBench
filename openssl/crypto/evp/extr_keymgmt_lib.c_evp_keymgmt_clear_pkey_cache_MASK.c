#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ domainparams; int /*<<< orphan*/ * provdata; TYPE_2__* keymgmt; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* freekey ) (void*) ;int /*<<< orphan*/  (* freedomparams ) (void*) ;} ;
struct TYPE_6__ {TYPE_4__* pkeys; } ;
typedef  TYPE_1__ EVP_PKEY ;
typedef  TYPE_2__ EVP_KEYMGMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(EVP_PKEY *pk)
{
    size_t i;

    if (pk != NULL) {
        for (i = 0;
             i < FUNC1(pk->pkeys) && pk->pkeys[i].keymgmt != NULL;
             i++) {
            EVP_KEYMGMT *keymgmt = pk->pkeys[i].keymgmt;
            void *provdata = pk->pkeys[i].provdata;

            pk->pkeys[i].keymgmt = NULL;
            pk->pkeys[i].provdata = NULL;
            if (pk->pkeys[i].domainparams)
                keymgmt->freedomparams(provdata);
            else
                keymgmt->freekey(provdata);
            FUNC0(keymgmt);
        }
    }
}