#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_14__ {scalar_t__ sl_sugtime; int /*<<< orphan*/  sl_sidxs; int /*<<< orphan*/  sl_sbyts; int /*<<< orphan*/  sl_fidxs; int /*<<< orphan*/  sl_fbyts; int /*<<< orphan*/ * sl_sugbuf; scalar_t__ sl_fname; scalar_t__ sl_sugloaded; } ;
typedef  TYPE_2__ slang_T ;
typedef  int /*<<< orphan*/  linenr_T ;
struct TYPE_15__ {TYPE_2__* lp_slang; } ;
typedef  TYPE_3__ langp_T ;
struct TYPE_16__ {scalar_t__ ga_len; scalar_t__ ga_data; } ;
typedef  TYPE_4__ garray_T ;
typedef  int char_u ;
struct TYPE_17__ {TYPE_1__* w_s; } ;
struct TYPE_12__ {int ga_len; } ;
struct TYPE_13__ {TYPE_11__ b_langp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC1 (TYPE_11__,int) ; 
 int MAXWLEN ; 
 int NUL ; 
 int /*<<< orphan*/  FUNC2 (int*,char*) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VIMSUGMAGIC ; 
 int VIMSUGMAGICL ; 
 int VIMSUGVERSION ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_9__* curwin ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC19 (scalar_t__,char) ; 

__attribute__((used)) static void
FUNC20()
{
    langp_T	*lp;
    int		lpi;
    slang_T	*slang;
    char_u	*dotp;
    FILE	*fd;
    char_u	buf[MAXWLEN];
    int		i;
    time_t	timestamp;
    int		wcount;
    int		wordnr;
    garray_T	ga;
    int		c;

    /* Do this for all languages that support sound folding. */
    for (lpi = 0; lpi < curwin->w_s->b_langp.ga_len; ++lpi)
    {
	lp = FUNC1(curwin->w_s->b_langp, lpi);
	slang = lp->lp_slang;
	if (slang->sl_sugtime != 0 && !slang->sl_sugloaded)
	{
	    /* Change ".spl" to ".sug" and open the file.  When the file isn't
	     * found silently skip it.  Do set "sl_sugloaded" so that we
	     * don't try again and again. */
	    slang->sl_sugloaded = TRUE;

	    dotp = FUNC19(slang->sl_fname, '.');
	    if (dotp == NULL || FUNC6(dotp, ".spl") != 0)
		continue;
	    FUNC2(dotp, ".sug");
	    fd = FUNC13((char *)slang->sl_fname, "r");
	    if (fd == NULL)
		goto nextone;

	    /*
	     * <SUGHEADER>: <fileID> <versionnr> <timestamp>
	     */
	    for (i = 0; i < VIMSUGMAGICL; ++i)
		buf[i] = FUNC12(fd);			/* <fileID> */
	    if (FUNC3(buf, VIMSUGMAGIC, VIMSUGMAGICL) != 0)
	    {
		FUNC0(FUNC4("E778: This does not look like a .sug file: %s"),
							     slang->sl_fname);
		goto nextone;
	    }
	    c = FUNC12(fd);				/* <versionnr> */
	    if (c < VIMSUGVERSION)
	    {
		FUNC0(FUNC4("E779: Old .sug file, needs to be updated: %s"),
							     slang->sl_fname);
		goto nextone;
	    }
	    else if (c > VIMSUGVERSION)
	    {
		FUNC0(FUNC4("E780: .sug file is for newer version of Vim: %s"),
							     slang->sl_fname);
		goto nextone;
	    }

	    /* Check the timestamp, it must be exactly the same as the one in
	     * the .spl file.  Otherwise the word numbers won't match. */
	    timestamp = FUNC11(fd);			/* <timestamp> */
	    if (timestamp != slang->sl_sugtime)
	    {
		FUNC0(FUNC4("E781: .sug file doesn't match .spl file: %s"),
							     slang->sl_fname);
		goto nextone;
	    }

	    /*
	     * <SUGWORDTREE>: <wordtree>
	     * Read the trie with the soundfolded words.
	     */
	    if (FUNC17(fd, &slang->sl_sbyts, &slang->sl_sidxs,
							       FALSE, 0) != 0)
	    {
someerror:
		FUNC0(FUNC4("E782: error while reading .sug file: %s"),
							     slang->sl_fname);
		FUNC16(slang);
		goto nextone;
	    }

	    /*
	     * <SUGTABLE>: <sugwcount> <sugline> ...
	     *
	     * Read the table with word numbers.  We use a file buffer for
	     * this, because it's so much like a file with lines.  Makes it
	     * possible to swap the info and save on memory use.
	     */
	    slang->sl_sugbuf = FUNC15();
	    if (slang->sl_sugbuf == NULL)
		goto someerror;
							    /* <sugwcount> */
	    wcount = FUNC10(fd);
	    if (wcount < 0)
		goto someerror;

	    /* Read all the wordnr lists into the buffer, one NUL terminated
	     * list per line. */
	    FUNC9(&ga, 1, 100);
	    for (wordnr = 0; wordnr < wcount; ++wordnr)
	    {
		ga.ga_len = 0;
		for (;;)
		{
		    c = FUNC12(fd);			    /* <sugline> */
		    if (c < 0 || FUNC8(&ga, 1) == FAIL)
			goto someerror;
		    ((char_u *)ga.ga_data)[ga.ga_len++] = c;
		    if (c == NUL)
			break;
		}
		if (FUNC14(slang->sl_sugbuf, (linenr_T)wordnr,
					 ga.ga_data, ga.ga_len, TRUE) == FAIL)
		    goto someerror;
	    }
	    FUNC7(&ga);

	    /*
	     * Need to put word counts in the word tries, so that we can find
	     * a word by its number.
	     */
	    FUNC18(slang->sl_fbyts, slang->sl_fidxs);
	    FUNC18(slang->sl_sbyts, slang->sl_sidxs);

nextone:
	    if (fd != NULL)
		FUNC5(fd);
	    FUNC2(dotp, ".spl");
	}
    }
}