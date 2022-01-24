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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  dev ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int S_IFBLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int nvram_part_size ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,int*,int*) ; 
 int FUNC6 (char*,struct stat*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

char * FUNC10(void)
{
	FILE *fp;
	int i, part_size;
	char dev[PATH_MAX];
	char *path = NULL;
	struct stat s;

	if ((fp = FUNC2("/proc/mtd", "r")))
	{
		while( FUNC1(dev, sizeof(dev), fp) )
		{
			if( FUNC9(dev, "nvram") && FUNC5(dev, "mtd%d: %08x", &i, &part_size) )
			{
				nvram_part_size = part_size;

				FUNC4(dev, "/dev/mtdblock%d", i);
				if( FUNC6(dev, &s) > -1 && (s.st_mode & S_IFBLK) )
				{
					if( (path = (char *) FUNC3(FUNC7(dev)+1)) != NULL )
					{
						FUNC8(path, dev, FUNC7(dev)+1);
						break;
					}
				}
			}
		}
		FUNC0(fp);
	}

	return path;
}