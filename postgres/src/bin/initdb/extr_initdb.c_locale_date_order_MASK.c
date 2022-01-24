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
typedef  int /*<<< orphan*/  testtime ;
struct tm {int tm_mday; int tm_mon; int tm_year; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DATEORDER_DMY ; 
 int DATEORDER_MDY ; 
 int DATEORDER_YMD ; 
 int /*<<< orphan*/  LC_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (char*,int,char*,struct tm*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(const char *locale)
{
	struct tm	testtime;
	char		buf[128];
	char	   *posD;
	char	   *posM;
	char	   *posY;
	char	   *save;
	size_t		res;
	int			result;

	result = DATEORDER_MDY;		/* default */

	save = FUNC4(LC_TIME, NULL);
	if (!save)
		return result;
	save = FUNC3(save);

	FUNC4(LC_TIME, locale);

	FUNC1(&testtime, 0, sizeof(testtime));
	testtime.tm_mday = 22;
	testtime.tm_mon = 10;		/* November, should come out as "11" */
	testtime.tm_year = 133;		/* 2033 */

	res = FUNC2(buf, sizeof(buf), "%x", &testtime);

	FUNC4(LC_TIME, save);
	FUNC0(save);

	if (res == 0)
		return result;

	posM = FUNC5(buf, "11");
	posD = FUNC5(buf, "22");
	posY = FUNC5(buf, "33");

	if (!posM || !posD || !posY)
		return result;

	if (posY < posM && posM < posD)
		result = DATEORDER_YMD;
	else if (posD < posM)
		result = DATEORDER_DMY;
	else
		result = DATEORDER_MDY;

	return result;
}