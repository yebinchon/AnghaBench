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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int) ; 

__attribute__((used)) static char *
FUNC4(const char *a, const char *b, const char *c, const char *d)
{
	StringInfoData result;

	FUNC2(&result);

	if (a)
		FUNC1(&result,
							   FUNC3(a, true, true));
	if (b)
		FUNC0(&result, ".%s",
						 FUNC3(b, true, true));
	if (c)
		FUNC0(&result, ".%s",
						 FUNC3(c, true, true));
	if (d)
		FUNC0(&result, ".%s",
						 FUNC3(d, true, true));

	return result.data;
}