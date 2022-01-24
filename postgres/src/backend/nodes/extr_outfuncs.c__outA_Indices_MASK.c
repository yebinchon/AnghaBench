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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  A_Indices ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  is_slice ; 
 int /*<<< orphan*/  lidx ; 
 int /*<<< orphan*/  uidx ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const A_Indices *node)
{
	FUNC2("A_INDICES");

	FUNC0(is_slice);
	FUNC1(lidx);
	FUNC1(uidx);
}