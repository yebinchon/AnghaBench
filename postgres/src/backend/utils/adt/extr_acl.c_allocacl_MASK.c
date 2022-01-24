#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ndim; int /*<<< orphan*/  elemtype; scalar_t__ dataoffset; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ Acl ;

/* Variables and functions */
 int /*<<< orphan*/  ACLITEMOID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (TYPE_1__*) ; 
 int* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Acl *
FUNC6(int n)
{
	Acl		   *new_acl;
	Size		size;

	if (n < 0)
		FUNC4(ERROR, "invalid size: %d", n);
	size = FUNC0(n);
	new_acl = (Acl *) FUNC5(size);
	FUNC3(new_acl, size);
	new_acl->ndim = 1;
	new_acl->dataoffset = 0;	/* we never put in any nulls */
	new_acl->elemtype = ACLITEMOID;
	FUNC2(new_acl)[0] = 1;
	FUNC1(new_acl)[0] = n;
	return new_acl;
}