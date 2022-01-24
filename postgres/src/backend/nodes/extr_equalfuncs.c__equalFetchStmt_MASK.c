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
typedef  int /*<<< orphan*/  FetchStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  direction ; 
 int /*<<< orphan*/  howMany ; 
 int /*<<< orphan*/  ismove ; 
 int /*<<< orphan*/  portalname ; 

__attribute__((used)) static bool
FUNC2(const FetchStmt *a, const FetchStmt *b)
{
	FUNC0(direction);
	FUNC0(howMany);
	FUNC1(portalname);
	FUNC0(ismove);

	return true;
}