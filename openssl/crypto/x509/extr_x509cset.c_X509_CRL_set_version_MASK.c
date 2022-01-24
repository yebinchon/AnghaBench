#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * version; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef  TYPE_2__ X509_CRL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,long) ; 

int FUNC2(X509_CRL *x, long version)
{
    if (x == NULL)
        return 0;
    if (x->crl.version == NULL) {
        if ((x->crl.version = FUNC0()) == NULL)
            return 0;
    }
    return FUNC1(x->crl.version, version);
}