#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AclItem ;
typedef  int /*<<< orphan*/  const Acl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

Acl *
FUNC4(const Acl *orig_acl)
{
	Acl		   *result_acl;

	result_acl = FUNC2(FUNC1(orig_acl));

	FUNC3(FUNC0(result_acl),
		   FUNC0(orig_acl),
		   FUNC1(orig_acl) * sizeof(AclItem));

	return result_acl;
}