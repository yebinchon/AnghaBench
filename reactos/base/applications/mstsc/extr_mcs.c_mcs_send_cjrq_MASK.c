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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MCS_CJRQ ; 
 int /*<<< orphan*/  g_mcs_userid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint16 chanid)
{
	STREAM s;

	FUNC0(("Sending CJRQ for channel #%d\n", chanid));

	s = FUNC1(5);

	FUNC4(s, (MCS_CJRQ << 2));
	FUNC3(s, g_mcs_userid);
	FUNC3(s, chanid);

	FUNC5(s);
	FUNC2(s);
}