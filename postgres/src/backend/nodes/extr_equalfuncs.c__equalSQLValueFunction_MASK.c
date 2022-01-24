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
typedef  int /*<<< orphan*/  SQLValueFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  op ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  typmod ; 

__attribute__((used)) static bool
FUNC2(const SQLValueFunction *a, const SQLValueFunction *b)
{
	FUNC1(op);
	FUNC1(type);
	FUNC1(typmod);
	FUNC0(location);

	return true;
}