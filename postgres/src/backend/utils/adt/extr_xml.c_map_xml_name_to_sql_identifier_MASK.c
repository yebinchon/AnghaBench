#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

char *
FUNC7(const char *name)
{
	StringInfoData buf;
	const char *p;

	FUNC2(&buf);

	for (p = name; *p; p += FUNC4(p))
	{
		if (*p == '_' && *(p + 1) == 'x'
			&& FUNC3((unsigned char) *(p + 2))
			&& FUNC3((unsigned char) *(p + 3))
			&& FUNC3((unsigned char) *(p + 4))
			&& FUNC3((unsigned char) *(p + 5))
			&& *(p + 6) == '_')
		{
			unsigned int u;

			FUNC5(p + 2, "%X", &u);
			FUNC1(&buf, FUNC6(u));
			p += 6;
		}
		else
			FUNC0(&buf, p, FUNC4(p));
	}

	return buf.data;
}