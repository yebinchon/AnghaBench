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
typedef  scalar_t__ int16 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  CopyState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(CopyState cstate, int16 *val)
{
	uint16		buf;

	if (FUNC0(cstate, &buf, sizeof(buf), sizeof(buf)) != sizeof(buf))
	{
		*val = 0;				/* suppress compiler warning */
		return false;
	}
	*val = (int16) FUNC1(buf);
	return true;
}