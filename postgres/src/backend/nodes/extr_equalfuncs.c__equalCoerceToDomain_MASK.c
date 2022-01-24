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
typedef  int /*<<< orphan*/  CoerceToDomain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  coercionformat ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  resultcollid ; 
 int /*<<< orphan*/  resulttype ; 
 int /*<<< orphan*/  resulttypmod ; 

__attribute__((used)) static bool
FUNC4(const CoerceToDomain *a, const CoerceToDomain *b)
{
	FUNC2(arg);
	FUNC3(resulttype);
	FUNC3(resulttypmod);
	FUNC3(resultcollid);
	FUNC0(coercionformat);
	FUNC1(location);

	return true;
}