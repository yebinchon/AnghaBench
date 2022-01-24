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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char *src1, const char *src2,
				  const char *src3, const char *src4)
{
	StringInfoData result;
	const char *temp;

	FUNC2(&result);

	if (src1)
	{
		temp = FUNC4(src1);
		FUNC1(&result, temp);
		if (src1 != temp)
			FUNC3((void *) temp);
	}
	if (src2)
	{
		temp = FUNC4(src2);
		FUNC0(&result, ".%s", temp);
		if (src2 != temp)
			FUNC3((void *) temp);
	}
	if (src3)
	{
		temp = FUNC4(src3);
		FUNC0(&result, ".%s", temp);
		if (src3 != temp)
			FUNC3((void *) temp);
	}
	if (src4)
	{
		temp = FUNC4(src4);
		FUNC0(&result, ".%s", temp);
		if (src4 != temp)
			FUNC3((void *) temp);
	}
	return result.data;
}