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
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_3__ {int /*<<< orphan*/ * verify_store; int /*<<< orphan*/ * chain_store; } ;
typedef  TYPE_1__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(CERT *c, X509_STORE *store, int chain, int ref)
{
    X509_STORE **pstore;
    if (chain)
        pstore = &c->chain_store;
    else
        pstore = &c->verify_store;
    FUNC0(*pstore);
    *pstore = store;
    if (ref && store)
        FUNC1(store);
    return 1;
}