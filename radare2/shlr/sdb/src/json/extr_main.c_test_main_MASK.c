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
typedef  int /*<<< orphan*/  Rangstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 () {
	Rangstr rs ;

	rs = FUNC0 ("{\"hello\":\"world\"}", "hello");
FUNC1 ("OUT: ");
FUNC2 (&rs);
FUNC1 ("\n");

FUNC1 ("--\n");
	rs = FUNC0 ("{\"hello\":{\"world\":123}}", "hello.world");
FUNC1 ("OUT: ");
FUNC2 (&rs);
FUNC1 ("\n");
	return 0;
}