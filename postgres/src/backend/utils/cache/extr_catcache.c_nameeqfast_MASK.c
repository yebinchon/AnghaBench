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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(Datum a, Datum b)
{
	char	   *ca = FUNC1(*FUNC0(a));
	char	   *cb = FUNC1(*FUNC0(b));

	return FUNC2(ca, cb, NAMEDATALEN) == 0;
}