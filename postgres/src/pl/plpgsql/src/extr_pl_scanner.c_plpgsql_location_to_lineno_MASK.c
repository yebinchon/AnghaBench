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
 char const* cur_line_end ; 
 int cur_line_num ; 
 char const* cur_line_start ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* scanorig ; 
 char* FUNC1 (char const*,char) ; 

int
FUNC2(int location)
{
	const char *loc;

	if (location < 0 || scanorig == NULL)
		return 0;				/* garbage in, garbage out */
	loc = scanorig + location;

	/* be correct, but not fast, if input location goes backwards */
	if (loc < cur_line_start)
		FUNC0();

	while (cur_line_end != NULL && loc > cur_line_end)
	{
		cur_line_start = cur_line_end + 1;
		cur_line_num++;
		cur_line_end = FUNC1(cur_line_start, '\n');
	}

	return cur_line_num;
}