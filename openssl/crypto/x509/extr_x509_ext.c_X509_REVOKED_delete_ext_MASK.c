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
typedef  int /*<<< orphan*/  X509_EXTENSION ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 

X509_EXTENSION *FUNC1(X509_REVOKED *x, int loc)
{
    return FUNC0(x->extensions, loc);
}