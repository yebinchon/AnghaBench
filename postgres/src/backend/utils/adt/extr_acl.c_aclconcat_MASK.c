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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 

Acl *
FUNC4(const Acl *left_acl, const Acl *right_acl)
{
	Acl		   *result_acl;

	result_acl = FUNC2(FUNC1(left_acl) + FUNC1(right_acl));

	FUNC3(FUNC0(result_acl),
		   FUNC0(left_acl),
		   FUNC1(left_acl) * sizeof(AclItem));

	FUNC3(FUNC0(result_acl) + FUNC1(left_acl),
		   FUNC0(right_acl),
		   FUNC1(right_acl) * sizeof(AclItem));

	return result_acl;
}