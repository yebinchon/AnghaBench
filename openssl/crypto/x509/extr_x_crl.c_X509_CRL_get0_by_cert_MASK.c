#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_REVOKED ;
struct TYPE_6__ {TYPE_1__* meth; } ;
typedef  TYPE_2__ X509_CRL ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {int (* crl_lookup ) (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(X509_CRL *crl, X509_REVOKED **ret, X509 *x)
{
    if (crl->meth->crl_lookup)
        return crl->meth->crl_lookup(crl, ret,
                                     FUNC1(x),
                                     FUNC0(x));
    return 0;
}