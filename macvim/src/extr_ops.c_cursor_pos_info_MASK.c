#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct block_def {scalar_t__ textlen; int /*<<< orphan*/ * textstart; } ;
struct TYPE_15__ {scalar_t__ col; int lnum; } ;
typedef  TYPE_2__ pos_T ;
struct TYPE_16__ {int is_VIsual; scalar_t__ start_vcol; scalar_t__ end_vcol; int /*<<< orphan*/  op_type; int /*<<< orphan*/  block_mode; } ;
typedef  TYPE_3__ oparg_T ;
typedef  int linenr_T ;
typedef  long colnr_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_14__ {int ml_flags; int ml_line_count; } ;
struct TYPE_18__ {TYPE_1__ b_ml; scalar_t__ b_p_bin; int /*<<< orphan*/  b_p_eol; } ;
struct TYPE_17__ {scalar_t__ w_curswant; TYPE_2__ w_cursor; scalar_t__ w_virtcol; } ;

/* Variables and functions */
#define  Ctrl_V 128 
 scalar_t__ EOL_DOS ; 
 int /*<<< orphan*/  IOSIZE ; 
 int /*<<< orphan*/ * IObuff ; 
 scalar_t__ MAXCOL ; 
 int /*<<< orphan*/  MAYBE ; 
 int ML_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NUL ; 
 int /*<<< orphan*/  OP_NOP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ VIsual ; 
 scalar_t__ VIsual_active ; 
 int VIsual_mode ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct block_def*,int,int /*<<< orphan*/ ) ; 
 long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_9__* curbuf ; 
 TYPE_6__* curwin ; 
 int /*<<< orphan*/ * empty_option ; 
 scalar_t__ FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_2__*,TYPE_2__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ got_int ; 
 long FUNC8 (int /*<<< orphan*/ *,long*,long*,long,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* no_lines_msg ; 
 int /*<<< orphan*/ * p_sbr ; 
 char* p_sel ; 
 int /*<<< orphan*/ * p_shm ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  virtual_op ; 

void
FUNC19()
{
    char_u	*p;
    char_u	buf1[50];
    char_u	buf2[40];
    linenr_T	lnum;
    long	byte_count = 0;
    long	byte_count_cursor = 0;
    long	char_count = 0;
    long	char_count_cursor = 0;
    long	word_count = 0;
    long	word_count_cursor = 0;
    int		eol_size;
    long	last_check = 100000L;
    long	line_count_selected = 0;
    pos_T	min_pos, max_pos;
    oparg_T	oparg;
    struct block_def	bd;

    /*
     * Compute the length of the file in characters.
     */
    if (curbuf->b_ml.ml_flags & ML_EMPTY)
    {
	FUNC0(FUNC2(no_lines_msg));
    }
    else
    {
	if (FUNC6(curbuf) == EOL_DOS)
	    eol_size = 2;
	else
	    eol_size = 1;

	if (VIsual_active)
	{
	    if (FUNC10(VIsual, curwin->w_cursor))
	    {
		min_pos = VIsual;
		max_pos = curwin->w_cursor;
	    }
	    else
	    {
		min_pos = curwin->w_cursor;
		max_pos = VIsual;
	    }
	    if (*p_sel == 'e' && max_pos.col > 0)
		--max_pos.col;

	    if (VIsual_mode == Ctrl_V)
	    {
#ifdef FEAT_LINEBREAK
		char_u * saved_sbr = p_sbr;

		/* Make 'sbr' empty for a moment to get the correct size. */
		p_sbr = empty_option;
#endif
		oparg.is_VIsual = 1;
		oparg.block_mode = TRUE;
		oparg.op_type = OP_NOP;
		FUNC7(curwin, &min_pos, &max_pos,
					  &oparg.start_vcol, &oparg.end_vcol);
#ifdef FEAT_LINEBREAK
		p_sbr = saved_sbr;
#endif
		if (curwin->w_curswant == MAXCOL)
		    oparg.end_vcol = MAXCOL;
		/* Swap the start, end vcol if needed */
		if (oparg.end_vcol < oparg.start_vcol)
		{
		    oparg.end_vcol += oparg.start_vcol;
		    oparg.start_vcol = oparg.end_vcol - oparg.start_vcol;
		    oparg.end_vcol -= oparg.start_vcol;
		}
	    }
	    line_count_selected = max_pos.lnum - min_pos.lnum + 1;
	}

	for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
	{
	    /* Check for a CTRL-C every 100000 characters. */
	    if (byte_count > last_check)
	    {
		FUNC15();
		if (got_int)
		    return;
		last_check = byte_count + 100000L;
	    }

	    /* Do extra processing for VIsual mode. */
	    if (VIsual_active
		    && lnum >= min_pos.lnum && lnum <= max_pos.lnum)
	    {
		char_u	    *s = NULL;
		long	    len = 0L;

		switch (VIsual_mode)
		{
		    case Ctrl_V:
#ifdef FEAT_VIRTUALEDIT
			virtual_op = virtual_active();
#endif
			FUNC3(&oparg, &bd, lnum, 0);
#ifdef FEAT_VIRTUALEDIT
			virtual_op = MAYBE;
#endif
			s = bd.textstart;
			len = (long)bd.textlen;
			break;
		    case 'V':
			s = FUNC11(lnum);
			len = MAXCOL;
			break;
		    case 'v':
			{
			    colnr_T start_col = (lnum == min_pos.lnum)
							   ? min_pos.col : 0;
			    colnr_T end_col = (lnum == max_pos.lnum)
				      ? max_pos.col - start_col + 1 : MAXCOL;

			    s = FUNC11(lnum) + start_col;
			    len = end_col;
			}
			break;
		}
		if (s != NULL)
		{
		    byte_count_cursor += FUNC8(s, &word_count_cursor,
					   &char_count_cursor, len, eol_size);
		    if (lnum == curbuf->b_ml.ml_line_count
			    && !curbuf->b_p_eol
			    && curbuf->b_p_bin
			    && (long)FUNC1(s) < len)
			byte_count_cursor -= eol_size;
		}
	    }
	    else
	    {
		/* In non-visual mode, check for the line the cursor is on */
		if (lnum == curwin->w_cursor.lnum)
		{
		    word_count_cursor += word_count;
		    char_count_cursor += char_count;
		    byte_count_cursor = byte_count +
			FUNC8(FUNC11(lnum),
				&word_count_cursor, &char_count_cursor,
				  (long)(curwin->w_cursor.col + 1), eol_size);
		}
	    }
	    /* Add to the running totals */
	    byte_count += FUNC8(FUNC11(lnum), &word_count,
					 &char_count, (long)MAXCOL, eol_size);
	}

	/* Correction for when last line doesn't have an EOL. */
	if (!curbuf->b_p_eol && curbuf->b_p_bin)
	    byte_count -= eol_size;

	if (VIsual_active)
	{
	    if (VIsual_mode == Ctrl_V && curwin->w_curswant < MAXCOL)
	    {
		FUNC7(curwin, &min_pos, &max_pos, &min_pos.col,
								&max_pos.col);
		FUNC17((char *)buf1, sizeof(buf1), FUNC2("%ld Cols; "),
			(long)(oparg.end_vcol - oparg.start_vcol + 1));
	    }
	    else
		buf1[0] = NUL;

	    if (char_count_cursor == byte_count_cursor
						  && char_count == byte_count)
		FUNC17((char *)IObuff, IOSIZE,
			FUNC2("Selected %s%ld of %ld Lines; %ld of %ld Words; %ld of %ld Bytes"),
			buf1, line_count_selected,
			(long)curbuf->b_ml.ml_line_count,
			word_count_cursor, word_count,
			byte_count_cursor, byte_count);
	    else
		FUNC17((char *)IObuff, IOSIZE,
			FUNC2("Selected %s%ld of %ld Lines; %ld of %ld Words; %ld of %ld Chars; %ld of %ld Bytes"),
			buf1, line_count_selected,
			(long)curbuf->b_ml.ml_line_count,
			word_count_cursor, word_count,
			char_count_cursor, char_count,
			byte_count_cursor, byte_count);
	}
	else
	{
	    p = FUNC12();
	    FUNC16();
	    FUNC5(buf1, sizeof(buf1), (int)curwin->w_cursor.col + 1,
		    (int)curwin->w_virtcol + 1);
	    FUNC5(buf2, sizeof(buf2), (int)FUNC1(p),
				FUNC9(p));

	    if (char_count_cursor == byte_count_cursor
		    && char_count == byte_count)
		FUNC17((char *)IObuff, IOSIZE,
		    FUNC2("Col %s of %s; Line %ld of %ld; Word %ld of %ld; Byte %ld of %ld"),
		    (char *)buf1, (char *)buf2,
		    (long)curwin->w_cursor.lnum,
		    (long)curbuf->b_ml.ml_line_count,
		    word_count_cursor, word_count,
		    byte_count_cursor, byte_count);
	    else
		FUNC17((char *)IObuff, IOSIZE,
		    FUNC2("Col %s of %s; Line %ld of %ld; Word %ld of %ld; Char %ld of %ld; Byte %ld of %ld"),
		    (char *)buf1, (char *)buf2,
		    (long)curwin->w_cursor.lnum,
		    (long)curbuf->b_ml.ml_line_count,
		    word_count_cursor, word_count,
		    char_count_cursor, char_count,
		    byte_count_cursor, byte_count);
	}

#ifdef FEAT_MBYTE
	byte_count = bomb_size();
	if (byte_count > 0)
	    sprintf((char *)IObuff + STRLEN(IObuff), _("(+%ld for BOM)"),
								  byte_count);
#endif
	/* Don't shorten this message, the user asked for it. */
	p = p_shm;
	p_shm = (char_u *)"";
	FUNC13(IObuff);
	p_shm = p;
    }
}