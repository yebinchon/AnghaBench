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
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 char* FUNC0 (unsigned long) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned long) ; 

__attribute__((used)) static const char *
FUNC3(unsigned long ecode)
{
	const char *errreason;
	static char errbuf[36];

	if (ecode == 0)
		return FUNC1("no SSL error reported");
	errreason = FUNC0(ecode);
	if (errreason != NULL)
		return errreason;
	FUNC2(errbuf, sizeof(errbuf), FUNC1("SSL error code %lu"), ecode);
	return errbuf;
}