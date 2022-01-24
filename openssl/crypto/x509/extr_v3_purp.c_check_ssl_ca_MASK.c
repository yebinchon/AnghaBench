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
struct TYPE_4__ {int ex_nscert; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int NS_SSL_CA ; 
 int FUNC0 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC1(const X509 *x)
{
    int ca_ret;
    ca_ret = FUNC0(x);
    if (!ca_ret)
        return 0;
    /* check nsCertType if present */
    if (ca_ret != 5 || x->ex_nscert & NS_SSL_CA)
        return ca_ret;
    else
        return 0;
}