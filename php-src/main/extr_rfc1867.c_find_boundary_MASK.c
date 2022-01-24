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
typedef  int /*<<< orphan*/  multipart_buffer ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(multipart_buffer *self, char *boundary)
{
	char *line;

	/* loop through lines */
	while( (line = FUNC0(self)) )
	{
		/* finished if we found the boundary */
		if (!FUNC1(line, boundary)) {
			return 1;
		}
	}

	/* didn't find the boundary */
	return 0;
}