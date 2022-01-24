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
typedef  int /*<<< orphan*/  SubscriptingRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  refassgnexpr ; 
 int /*<<< orphan*/  refcollid ; 
 int /*<<< orphan*/  refcontainertype ; 
 int /*<<< orphan*/  refelemtype ; 
 int /*<<< orphan*/  refexpr ; 
 int /*<<< orphan*/  reflowerindexpr ; 
 int /*<<< orphan*/  reftypmod ; 
 int /*<<< orphan*/  refupperindexpr ; 

__attribute__((used)) static bool
FUNC2(const SubscriptingRef *a, const SubscriptingRef *b)
{
	FUNC1(refcontainertype);
	FUNC1(refelemtype);
	FUNC1(reftypmod);
	FUNC1(refcollid);
	FUNC0(refupperindexpr);
	FUNC0(reflowerindexpr);
	FUNC0(refexpr);
	FUNC0(refassgnexpr);

	return true;
}