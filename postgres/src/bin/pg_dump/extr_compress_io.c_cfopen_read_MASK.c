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
typedef  int /*<<< orphan*/  cfp ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*,char const*) ; 

cfp *
FUNC4(const char *path, const char *mode)
{
	cfp		   *fp;

#ifdef HAVE_LIBZ
	if (hasSuffix(path, ".gz"))
		fp = cfopen(path, mode, 1);
	else
#endif
	{
		fp = FUNC0(path, mode, 0);
#ifdef HAVE_LIBZ
		if (fp == NULL)
		{
			char	   *fname;

			fname = psprintf("%s.gz", path);
			fp = cfopen(fname, mode, 1);
			free_keep_errno(fname);
		}
#endif
	}
	return fp;
}