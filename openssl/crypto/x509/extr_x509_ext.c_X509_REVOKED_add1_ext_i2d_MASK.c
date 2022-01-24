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
struct TYPE_3__ {int /*<<< orphan*/  extensions; } ;
typedef  TYPE_1__ X509_REVOKED ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,void*,int,unsigned long) ; 

int FUNC1(X509_REVOKED *x, int nid, void *value, int crit,
                              unsigned long flags)
{
    return FUNC0(&x->extensions, nid, value, crit, flags);
}