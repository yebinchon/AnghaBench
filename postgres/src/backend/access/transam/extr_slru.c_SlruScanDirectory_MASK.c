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
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  Dir; } ;
typedef  int (* SlruScanCallback ) (TYPE_1__*,int /*<<< orphan*/ ,int,void*) ;
typedef  TYPE_1__* SlruCtl ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SLRU_PAGES_PER_SEGMENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

bool
FUNC7(SlruCtl ctl, SlruScanCallback callback, void *data)
{
	bool		retval = false;
	DIR		   *cldir;
	struct dirent *clde;
	int			segno;
	int			segpage;

	cldir = FUNC0(ctl->Dir);
	while ((clde = FUNC2(cldir, ctl->Dir)) != NULL)
	{
		size_t		len;

		len = FUNC4(clde->d_name);

		if ((len == 4 || len == 5 || len == 6) &&
			FUNC5(clde->d_name, "0123456789ABCDEF") == len)
		{
			segno = (int) FUNC6(clde->d_name, NULL, 16);
			segpage = segno * SLRU_PAGES_PER_SEGMENT;

			FUNC3(DEBUG2, "SlruScanDirectory invoking callback on %s/%s",
				 ctl->Dir, clde->d_name);
			retval = callback(ctl, clde->d_name, segpage, data);
			if (retval)
				break;
		}
	}
	FUNC1(cldir);

	return retval;
}