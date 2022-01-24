#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uncompressedfp; scalar_t__ compressedfp; } ;
typedef  TYPE_1__ cfp ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(cfp *fp)
{
	int			ret;

#ifdef HAVE_LIBZ
	if (fp->compressedfp)
	{
		ret = gzgetc(fp->compressedfp);
		if (ret == EOF)
		{
			if (!gzeof(fp->compressedfp))
				fatal("could not read from input file: %s", strerror(errno));
			else
				fatal("could not read from input file: end of file");
		}
	}
	else
#endif
	{
		ret = FUNC2(fp->uncompressedfp);
		if (ret == EOF)
			FUNC0(fp->uncompressedfp);
	}

	return ret;
}