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
struct TYPE_3__ {int /*<<< orphan*/  foid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ FmgrBuiltin ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 TYPE_1__* FUNC0 (char const*) ; 

Oid
FUNC1(const char *proname)
{
	const FmgrBuiltin *fbp = FUNC0(proname);

	if (fbp == NULL)
		return InvalidOid;
	return fbp->foid;
}