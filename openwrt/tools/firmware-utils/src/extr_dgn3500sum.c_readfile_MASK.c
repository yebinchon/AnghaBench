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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 

__attribute__((used)) static char *FUNC6(char *filename, int *size)
{
	FILE		*fp;
	char		*buffer;
	struct stat	info;

	if (FUNC5(filename,&info)!=0)
		return NULL;

	if ((fp=FUNC1(filename,"r"))==NULL)
		return NULL;

	buffer=NULL;
	for (;;)
	{
		if ((buffer=(char *)FUNC4(info.st_size+1))==NULL)
			break;

		if (FUNC2(buffer,1,info.st_size,fp)!=info.st_size)
		{
			FUNC3(buffer);
			buffer=NULL;
			break;
		}

		buffer[info.st_size]='\0';
		if(size) *size = info.st_size;

		break;
	}

	(void)FUNC0(fp);

	return buffer;
}