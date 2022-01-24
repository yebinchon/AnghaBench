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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (char*,int) ; 

__attribute__((used)) static inline void
FUNC2(char *isn)
{
	unsigned	check;

	/* the number should come in this format: 977-0000-000-00-0 */
	/* Strip the first part, crop, and calculate the new check digit */
	FUNC0(isn, isn + 4, NULL, NULL);
	check = FUNC1(isn, 8);
	if (check == 10)
		isn[8] = 'X';
	else
		isn[8] = check + '0';
	isn[9] = '\0';
}