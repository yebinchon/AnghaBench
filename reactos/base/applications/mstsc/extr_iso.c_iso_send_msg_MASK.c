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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint8 code)
{
	STREAM s;

	s = FUNC4(11);

	FUNC2(s, 3);	/* version */
	FUNC2(s, 0);	/* reserved */
	FUNC1(s, 11);	/* length */

	FUNC2(s, 6);	/* hdrlen */
	FUNC2(s, code);
	FUNC0(s, 0);	/* dst_ref */
	FUNC0(s, 0);	/* src_ref */
	FUNC2(s, 0);	/* class */

	FUNC3(s);
	FUNC5(s);
}