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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * scanorig ; 

int
FUNC3(int location)
{
	int			pos;

	if (location < 0 || scanorig == NULL)
		return 0;				/* no-op if location is unknown */

	/* Convert byte offset to character number */
	pos = FUNC2(scanorig, location) + 1;
	/* And pass it to the ereport mechanism */
	(void) FUNC0(pos);
	/* Also pass the function body string */
	return FUNC1(scanorig);
}