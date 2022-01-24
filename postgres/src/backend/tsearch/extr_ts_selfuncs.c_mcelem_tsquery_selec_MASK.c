#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  float4 ;
struct TYPE_4__ {int /*<<< orphan*/  frequency; int /*<<< orphan*/ * element; } ;
typedef  TYPE_1__ TextFreq ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  int /*<<< orphan*/  Selectivity ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Selectivity
FUNC10(TSQuery query, Datum *mcelem, int nmcelem,
					 float4 *numbers, int nnumbers)
{
	float4		minfreq;
	TextFreq   *lookup;
	Selectivity selec;
	int			i;

	/*
	 * There should be two more Numbers than Values, because the last two
	 * cells are taken for minimal and maximal frequency.  Punt if not.
	 *
	 * (Note: the MCELEM statistics slot definition allows for a third extra
	 * number containing the frequency of nulls, but we're not expecting that
	 * to appear for a tsvector column.)
	 */
	if (nnumbers != nmcelem + 2)
		return FUNC9(query);

	/*
	 * Transpose the data into a single array so we can use bsearch().
	 */
	lookup = (TextFreq *) FUNC6(sizeof(TextFreq) * nmcelem);
	for (i = 0; i < nmcelem; i++)
	{
		/*
		 * The text Datums came from an array, so it cannot be compressed or
		 * stored out-of-line -- it's safe to use VARSIZE_ANY*.
		 */
		FUNC0(!FUNC4(mcelem[i]) && !FUNC5(mcelem[i]));
		lookup[i].element = (text *) FUNC1(mcelem[i]);
		lookup[i].frequency = numbers[i];
	}

	/*
	 * Grab the lowest frequency. compute_tsvector_stats() stored it for us in
	 * the one before the last cell of the Numbers array. See ts_typanalyze.c
	 */
	minfreq = numbers[nnumbers - 2];

	selec = FUNC8(FUNC3(query), FUNC2(query), lookup,
							  nmcelem, minfreq);

	FUNC7(lookup);

	return selec;
}