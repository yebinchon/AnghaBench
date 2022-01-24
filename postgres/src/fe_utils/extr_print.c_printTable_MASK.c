#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* opt; } ;
typedef  TYPE_2__ printTableContent ;
struct TYPE_20__ {int format; int expanded; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 
#define  PRINT_ALIGNED 136 
#define  PRINT_ASCIIDOC 135 
#define  PRINT_CSV 134 
#define  PRINT_HTML 133 
#define  PRINT_LATEX 132 
#define  PRINT_LATEX_LONGTABLE 131 
 int PRINT_NOTHING ; 
#define  PRINT_TROFF_MS 130 
#define  PRINT_UNALIGNED 129 
#define  PRINT_WRAPPED 128 
 char* FUNC2 (char*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC20(const printTableContent *cont,
		   FILE *fout, bool is_pager, FILE *flog)
{
	bool		is_local_pager = false;

	if (cancel_pressed)
		return;

	if (cont->opt->format == PRINT_NOTHING)
		return;

	/* print_aligned_*() handle the pager themselves */
	if (!is_pager &&
		cont->opt->format != PRINT_ALIGNED &&
		cont->opt->format != PRINT_WRAPPED)
	{
		FUNC1(cont, 0, (cont->opt->expanded == 1), &fout, &is_pager);
		is_local_pager = is_pager;
	}

	/* print the stuff */

	if (flog)
		FUNC5(cont, flog, false);

	switch (cont->opt->format)
	{
		case PRINT_UNALIGNED:
			if (cont->opt->expanded == 1)
				FUNC19(cont, fout);
			else
				FUNC18(cont, fout);
			break;
		case PRINT_ALIGNED:
		case PRINT_WRAPPED:

			/*
			 * In expanded-auto mode, force vertical if a pager is passed in;
			 * else we may make different decisions for different hunks of the
			 * query result.
			 */
			if (cont->opt->expanded == 1 ||
				(cont->opt->expanded == 2 && is_pager))
				FUNC6(cont, fout, is_pager);
			else
				FUNC5(cont, fout, is_pager);
			break;
		case PRINT_CSV:
			if (cont->opt->expanded == 1)
				FUNC10(cont, fout);
			else
				FUNC9(cont, fout);
			break;
		case PRINT_HTML:
			if (cont->opt->expanded == 1)
				FUNC12(cont, fout);
			else
				FUNC11(cont, fout);
			break;
		case PRINT_ASCIIDOC:
			if (cont->opt->expanded == 1)
				FUNC8(cont, fout);
			else
				FUNC7(cont, fout);
			break;
		case PRINT_LATEX:
			if (cont->opt->expanded == 1)
				FUNC15(cont, fout);
			else
				FUNC14(cont, fout);
			break;
		case PRINT_LATEX_LONGTABLE:
			if (cont->opt->expanded == 1)
				FUNC15(cont, fout);
			else
				FUNC13(cont, fout);
			break;
		case PRINT_TROFF_MS:
			if (cont->opt->expanded == 1)
				FUNC17(cont, fout);
			else
				FUNC16(cont, fout);
			break;
		default:
			FUNC4(stderr, FUNC2("invalid output format (internal error): %d"),
					cont->opt->format);
			FUNC3(EXIT_FAILURE);
	}

	if (is_local_pager)
		FUNC0(fout);
}