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
typedef  int /*<<< orphan*/  AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  behavior ; 
 int /*<<< orphan*/  def ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  newowner ; 
 int /*<<< orphan*/  num ; 
 int /*<<< orphan*/  subtype ; 

__attribute__((used)) static bool
FUNC3(const AlterTableCmd *a, const AlterTableCmd *b)
{
	FUNC1(subtype);
	FUNC2(name);
	FUNC1(num);
	FUNC0(newowner);
	FUNC0(def);
	FUNC1(behavior);
	FUNC1(missing_ok);

	return true;
}