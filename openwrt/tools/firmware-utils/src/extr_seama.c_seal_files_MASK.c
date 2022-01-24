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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 char** o_images ; 
 size_t o_isize ; 
 int /*<<< orphan*/  o_meta ; 
 int /*<<< orphan*/  o_msize ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const char * file)
{
	FILE * fh;
	FILE * ifh;
	size_t i;

	/* Each image should be seama. */
	for (i = 0; i < o_isize; i++)
	{
		if (FUNC4(o_images[i], 0) < 0)
		{
			FUNC3("'%s' is not a seama file !\n",o_images[i]);
			return;
		}
	}

	/* Open file for write */
	fh = FUNC2(file, "w+");
	if (fh)
	{
		/* Write the header. */
		FUNC6(fh, o_meta, o_msize, 0);
		FUNC5(fh, o_meta, o_msize);

		/* Write image files */
		for (i=0; i<o_isize; i++)
		{
			ifh = FUNC2(o_images[i], "r+");
			if (ifh)
			{
				FUNC0(fh, ifh);
				FUNC1(ifh);
			}
		}

		FUNC1(fh);
	}
}