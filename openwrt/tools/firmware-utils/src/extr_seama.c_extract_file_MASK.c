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
struct TYPE_5__ {scalar_t__ magic; int /*<<< orphan*/  metasize; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  shdr ;
typedef  TYPE_1__ seamahdr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_SEAMA_META_SIZE ; 
 int /*<<< orphan*/  SEAMA_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 size_t FUNC4 (TYPE_1__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 char** o_images ; 
 size_t o_isize ; 
 scalar_t__ o_msize ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const char * output)
{
	FILE * ifh = NULL;
	FILE * ofh = NULL;
	size_t msize, isize, i, m;
	seamahdr_t shdr;
	uint8_t buf[MAX_SEAMA_META_SIZE];
	int done = 0;

	/* We need meta for searching the target image. */
	if (o_msize == 0)
	{
		FUNC10("SEAMA: need meta for searching image.\n");
		return;
	}

	/* Walk through each input file */
	for (i = 0; i < o_isize; i++)
	{
		/* verify the input file */
		if (FUNC11(o_images[i], 0) < 0)
		{
			FUNC10("SEAMA: '%s' is not a seama file !\n", o_images[i]);
			continue;
		}
		/* open the input file */
		ifh  = FUNC3(o_images[i], "r");
		if (!ifh) continue;
		/* read file */
		while (!FUNC1(ifh) && !FUNC2(ifh))
		{
			/* read header */
			FUNC4(&shdr, sizeof(shdr), 1, ifh);
			if (shdr.magic != FUNC6(SEAMA_MAGIC)) break;
			/* Get the size */
			isize = FUNC8(shdr.size);
			msize = FUNC9(shdr.metasize);
			if (isize == 0)
			{
				while (msize > 0)
				{
					m = FUNC4(buf, sizeof(char), (msize < MAX_SEAMA_META_SIZE) ? msize : MAX_SEAMA_META_SIZE, ifh);
					if (m <= 0) break;
					msize -= m;
				}
				continue;
			}
			/* read checksum */
			FUNC4(buf, sizeof(char), 16, ifh);
			if (msize > 0)
			{
				/* read META */
				FUNC4(buf, sizeof(char), msize, ifh);
				if (FUNC7((const char *)buf, msize))
				{
					FUNC10("SEAMA: found image @ '%s', image size: %zu\n", o_images[i], isize);
					/* open output file */
					ofh = FUNC3(output, "w");
					if (!ofh) FUNC10("SEAMA: unable to open '%s' for writting.\n",output);
					else
					{
						while (isize > 0)
						{
							m = FUNC4(buf, sizeof(char), (isize < MAX_SEAMA_META_SIZE) ? isize : MAX_SEAMA_META_SIZE, ifh);
							if (m <= 0) break;
							FUNC5(buf, sizeof(char), m, ofh);
							isize -= m;
						}
						FUNC0(ofh);
					}
					done++;
					break;
				}
			}
			while (isize > 0)
			{
				m = FUNC4(buf, sizeof(char), (isize < MAX_SEAMA_META_SIZE) ? isize : MAX_SEAMA_META_SIZE, ifh);
				if (m <= 0) break;
				isize -= m;
			}
		}
		/* close the file. */
		FUNC0(ifh);
		if (done) break;
	}
	return;
}