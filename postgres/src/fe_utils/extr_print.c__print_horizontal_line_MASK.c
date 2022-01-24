#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t printTextRule ;
struct TYPE_4__ {char* hrule; char* leftvrule; char* midvrule; char* rightvrule; } ;
typedef  TYPE_1__ printTextLineFormat ;
struct TYPE_5__ {TYPE_1__* lrule; } ;
typedef  TYPE_2__ printTextFormat ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(const unsigned int ncolumns, const unsigned int *widths,
					   unsigned short border, printTextRule pos,
					   const printTextFormat *format,
					   FILE *fout)
{
	const printTextLineFormat *lformat = &format->lrule[pos];
	unsigned int i,
				j;

	if (border == 1)
		FUNC2(lformat->hrule, fout);
	else if (border == 2)
		FUNC0(fout, "%s%s", lformat->leftvrule, lformat->hrule);

	for (i = 0; i < ncolumns; i++)
	{
		for (j = 0; j < widths[i]; j++)
			FUNC2(lformat->hrule, fout);

		if (i < ncolumns - 1)
		{
			if (border == 0)
				FUNC1(' ', fout);
			else
				FUNC0(fout, "%s%s%s", lformat->hrule,
						lformat->midvrule, lformat->hrule);
		}
	}

	if (border == 2)
		FUNC0(fout, "%s%s", lformat->hrule, lformat->rightvrule);
	else if (border == 1)
		FUNC2(lformat->hrule, fout);

	FUNC1('\n', fout);
}