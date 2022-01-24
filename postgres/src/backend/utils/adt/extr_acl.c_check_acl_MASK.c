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
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 scalar_t__ ACLITEMOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(const Acl *acl)
{
	if (FUNC0(acl) != ACLITEMOID)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("ACL array contains wrong data type")));
	if (FUNC2(acl) != 1)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("ACL arrays must be one-dimensional")));
	if (FUNC1(acl))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC5("ACL arrays must not contain null values")));
}