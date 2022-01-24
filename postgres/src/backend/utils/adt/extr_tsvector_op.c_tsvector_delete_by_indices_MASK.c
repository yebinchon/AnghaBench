#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  WordEntryPos ;
struct TYPE_12__ {int pos; int len; scalar_t__ haspos; } ;
typedef  TYPE_1__ WordEntry ;
struct TYPE_13__ {int size; } ;
typedef  TYPE_2__* TSVector ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 char* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  compare_int ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TSVector
FUNC12(TSVector tsv, int *indices_to_delete,
						   int indices_count)
{
	TSVector	tsout;
	WordEntry  *arrin = FUNC0(tsv),
			   *arrout;
	char	   *data = FUNC6(tsv),
			   *dataout;
	int			i,				/* index in arrin */
				j,				/* index in arrout */
				k,				/* index in indices_to_delete */
				curoff;			/* index in dataout area */

	/*
	 * Sort the filter array to simplify membership checks below.  Also, get
	 * rid of any duplicate entries, so that we can assume that indices_count
	 * is exactly equal to the number of lexemes that will be removed.
	 */
	if (indices_count > 1)
	{
		FUNC10(indices_to_delete, indices_count, sizeof(int), compare_int);
		indices_count = FUNC11(indices_to_delete, indices_count, sizeof(int),
								compare_int);
	}

	/*
	 * Here we overestimate tsout size, since we don't know how much space is
	 * used by the deleted lexeme(s).  We will set exact size below.
	 */
	tsout = (TSVector) FUNC9(FUNC7(tsv));

	/* This count must be correct because STRPTR(tsout) relies on it. */
	tsout->size = tsv->size - indices_count;

	/*
	 * Copy tsv to tsout, skipping lexemes listed in indices_to_delete.
	 */
	arrout = FUNC0(tsout);
	dataout = FUNC6(tsout);
	curoff = 0;
	for (i = j = k = 0; i < tsv->size; i++)
	{
		/*
		 * If current i is present in indices_to_delete, skip this lexeme.
		 * Since indices_to_delete is already sorted, we only need to check
		 * the current (k'th) entry.
		 */
		if (k < indices_count && i == indices_to_delete[k])
		{
			k++;
			continue;
		}

		/* Copy lexeme and its positions and weights */
		FUNC8(dataout + curoff, data + arrin[i].pos, arrin[i].len);
		arrout[j].haspos = arrin[i].haspos;
		arrout[j].len = arrin[i].len;
		arrout[j].pos = curoff;
		curoff += arrin[i].len;
		if (arrin[i].haspos)
		{
			int			len = FUNC3(tsv, arrin + i) * sizeof(WordEntryPos)
			+ sizeof(uint16);

			curoff = FUNC5(curoff);
			FUNC8(dataout + curoff,
				   FUNC6(tsv) + FUNC5(arrin[i].pos + arrin[i].len),
				   len);
			curoff += len;
		}

		j++;
	}

	/*
	 * k should now be exactly equal to indices_count. If it isn't then the
	 * caller provided us with indices outside of [0, tsv->size) range and
	 * estimation of tsout's size is wrong.
	 */
	FUNC1(k == indices_count);

	FUNC4(tsout, FUNC2(tsout->size, curoff));
	return tsout;
}