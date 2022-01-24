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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 

cfp *
FUNC4(const char *path, const char *mode, int compression)
{
	cfp		   *fp;

	if (compression == 0)
		fp = FUNC0(path, mode, 0);
	else
	{
#ifdef HAVE_LIBZ
		char	   *fname;

		fname = psprintf("%s.gz", path);
		fp = cfopen(fname, mode, compression);
		free_keep_errno(fname);
#else
		FUNC1("not built with zlib support");
		fp = NULL;				/* keep compiler quiet */
#endif
	}
	return fp;
}