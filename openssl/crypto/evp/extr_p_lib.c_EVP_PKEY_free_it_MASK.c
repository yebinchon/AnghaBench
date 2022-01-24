#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pmeth_engine; int /*<<< orphan*/ * engine; TYPE_2__ pkey; TYPE_1__* ameth; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* pkey_free ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(EVP_PKEY *x)
{
    /* internal function; x is never NULL */

    FUNC1(x);

    if (x->ameth && x->ameth->pkey_free) {
        x->ameth->pkey_free(x);
        x->pkey.ptr = NULL;
    }
#ifndef OPENSSL_NO_ENGINE
    FUNC0(x->engine);
    x->engine = NULL;
    FUNC0(x->pmeth_engine);
    x->pmeth_engine = NULL;
#endif
}