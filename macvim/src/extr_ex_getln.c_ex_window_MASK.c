#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
struct TYPE_19__ {int col; int /*<<< orphan*/  lnum; } ;
struct TYPE_20__ {int w_p_rl; TYPE_2__ w_cursor; void* w_p_fen; } ;
typedef  TYPE_3__ win_T ;
struct cmdline_info {int cmdpos; int cmdlen; int cmdbufflen; int /*<<< orphan*/ * cmdbuff; int /*<<< orphan*/ * cmdprompt; } ;
typedef  scalar_t__ linenr_T ;
typedef  int /*<<< orphan*/  garray_T ;
typedef  int /*<<< orphan*/  colnr_T ;
typedef  scalar_t__ char_u ;
struct TYPE_18__ {int /*<<< orphan*/  ml_line_count; } ;
struct TYPE_21__ {TYPE_1__ b_ml; scalar_t__ b_p_tw; int /*<<< orphan*/  b_p_ma; } ;
typedef  TYPE_4__ buf_T ;
struct TYPE_22__ {int /*<<< orphan*/ * hisstr; } ;
struct TYPE_17__ {scalar_t__ tab; } ;

/* Variables and functions */
 char CAR ; 
 int Ctrl_C ; 
 int /*<<< orphan*/  DOBUF_WIPE ; 
 int /*<<< orphan*/  ECMD_HIDE ; 
 int /*<<< orphan*/  ECMD_ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENT_CMDWINENTER ; 
 int /*<<< orphan*/  EVENT_CMDWINLEAVE ; 
 scalar_t__ FAIL ; 
 void* FALSE ; 
 int HIST_CMD ; 
 int HIST_DEBUG ; 
 int INSERT ; 
 int K_IGNORE ; 
 char K_NOP ; 
 int K_XF1 ; 
 int K_XF2 ; 
 int NORMAL ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  OPT_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int RedrawingDisabled ; 
 int /*<<< orphan*/  SOME_VALID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int State ; 
 scalar_t__ TAB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WSP_BOT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 struct cmdline_info ccline ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ cmdline_star ; 
 TYPE_12__ cmdmod ; 
 int cmdmsg_rl ; 
 int cmdwin_result ; 
 scalar_t__ cmdwin_type ; 
 TYPE_4__* curbuf ; 
 TYPE_3__* curwin ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int exmode_active ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 () ; 
 int* hisidx ; 
 int hislen ; 
 int FUNC15 (scalar_t__) ; 
 TYPE_9__** history ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* need_wait_return ; 
 scalar_t__ p_cwh ; 
 scalar_t__ p_wc ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int restart_edit ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__*,long,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC29 (char) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 void* FUNC32 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC39()
{
    struct cmdline_info	save_ccline;
    buf_T		*old_curbuf = curbuf;
    win_T		*old_curwin = curwin;
    buf_T		*bp;
    win_T		*wp;
    int			i;
    linenr_T		lnum;
    int			histtype;
    garray_T		winsizes;
#ifdef FEAT_AUTOCMD
    char_u		typestr[2];
#endif
    int			save_restart_edit = restart_edit;
    int			save_State = State;
    int			save_exmode = exmode_active;
#ifdef FEAT_RIGHTLEFT
    int			save_cmdmsg_rl = cmdmsg_rl;
#endif

    /* Can't do this recursively.  Can't do it when typing a password. */
    if (cmdwin_type != 0
# if defined(FEAT_CRYPT) || defined(FEAT_EVAL)
	    || cmdline_star > 0
# endif
	    )
    {
	FUNC7();
	return K_IGNORE;
    }

    /* Save current window sizes. */
    FUNC36(&winsizes);

# ifdef FEAT_AUTOCMD
    /* Don't execute autocommands while creating the window. */
    block_autocmds();
# endif
    /* don't use a new tab page */
    cmdmod.tab = 0;

    /* Create a window for the command-line buffer. */
    if (FUNC37((int)p_cwh, WSP_BOT) == FAIL)
    {
	FUNC7();
# ifdef FEAT_AUTOCMD
	unblock_autocmds();
# endif
	return K_IGNORE;
    }
    cmdwin_type = FUNC14();

    /* Create the command-line buffer empty. */
    (void)FUNC12(0, NULL, NULL, NULL, ECMD_ONE, ECMD_HIDE, NULL);
    (void)FUNC26(curbuf, (char_u *)"[Command Line]", NULL, TRUE);
    FUNC25((char_u *)"bt", 0L, (char_u *)"nofile", OPT_LOCAL);
    FUNC25((char_u *)"swf", 0L, NULL, OPT_LOCAL);
    curbuf->b_p_ma = TRUE;
#ifdef FEAT_FOLDING
    curwin->w_p_fen = FALSE;
#endif
# ifdef FEAT_RIGHTLEFT
    curwin->w_p_rl = cmdmsg_rl;
    cmdmsg_rl = FALSE;
# endif
    FUNC1(curwin);

# ifdef FEAT_AUTOCMD
    /* Do execute autocommands for setting the filetype (load syntax). */
    unblock_autocmds();
# endif

    /* Showing the prompt may have set need_wait_return, reset it. */
    need_wait_return = FALSE;

    histtype = FUNC15(cmdwin_type);
    if (histtype == HIST_CMD || histtype == HIST_DEBUG)
    {
	if (p_wc == TAB)
	{
	    FUNC5((char_u *)"<buffer> <Tab> <C-X><C-V>", INSERT);
	    FUNC5((char_u *)"<buffer> <Tab> a<C-X><C-V>", NORMAL);
	}
	FUNC25((char_u *)"ft", 0L, (char_u *)"vim", OPT_LOCAL);
    }

    /* Reset 'textwidth' after setting 'filetype' (the Vim filetype plugin
     * sets 'textwidth' to 78). */
    curbuf->b_p_tw = 0;

    /* Fill the buffer with the history. */
    FUNC16();
    if (hislen > 0)
    {
	i = hisidx[histtype];
	if (i >= 0)
	{
	    lnum = 0;
	    do
	    {
		if (++i == hislen)
		    i = 0;
		if (history[histtype][i].hisstr != NULL)
		    FUNC19(lnum++, history[histtype][i].hisstr,
							   (colnr_T)0, FALSE);
	    }
	    while (i != hisidx[histtype]);
	}
    }

    /* Replace the empty last line with the current command-line and put the
     * cursor there. */
    FUNC21(curbuf->b_ml.ml_line_count, ccline.cmdbuff, TRUE);
    curwin->w_cursor.lnum = curbuf->b_ml.ml_line_count;
    curwin->w_cursor.col = ccline.cmdpos;
    FUNC10();
    FUNC17();
    FUNC22(SOME_VALID);

    /* Save the command line info, can be used recursively. */
    save_ccline = ccline;
    ccline.cmdbuff = NULL;
    ccline.cmdprompt = NULL;

    /* No Ex mode here! */
    exmode_active = 0;

    State = NORMAL;
# ifdef FEAT_MOUSE
    setmouse();
# endif

# ifdef FEAT_AUTOCMD
    /* Trigger CmdwinEnter autocommands. */
    typestr[0] = cmdwin_type;
    typestr[1] = NUL;
    apply_autocmds(EVENT_CMDWINENTER, typestr, typestr, FALSE, curbuf);
    if (restart_edit != 0)	/* autocmd with ":startinsert" */
	stuffcharReadbuff(K_NOP);
# endif

    i = RedrawingDisabled;
    RedrawingDisabled = 0;

    /*
     * Call the main loop until <CR> or CTRL-C is typed.
     */
    cmdwin_result = 0;
    FUNC18(TRUE, FALSE);

    RedrawingDisabled = i;

# ifdef FEAT_AUTOCMD
    /* Trigger CmdwinLeave autocommands. */
    apply_autocmds(EVENT_CMDWINLEAVE, typestr, typestr, FALSE, curbuf);
# endif

    /* Restore the command line info. */
    ccline = save_ccline;
    cmdwin_type = 0;

    exmode_active = save_exmode;

    /* Safety check: The old window or buffer was deleted: It's a bug when
     * this happens! */
    if (!FUNC38(old_curwin) || !FUNC9(old_curbuf))
    {
	cmdwin_result = Ctrl_C;
	FUNC0(FUNC3("E199: Active window or buffer deleted"));
    }
    else
    {
# if defined(FEAT_AUTOCMD) && defined(FEAT_EVAL)
	/* autocmds may abort script processing */
	if (aborting() && cmdwin_result != K_IGNORE)
	    cmdwin_result = Ctrl_C;
# endif
	/* Set the new command line from the cmdline buffer. */
	FUNC31(ccline.cmdbuff);
	if (cmdwin_result == K_XF1 || cmdwin_result == K_XF2) /* :qa[!] typed */
	{
	    char *p = (cmdwin_result == K_XF2) ? "qa" : "qa!";

	    if (histtype == HIST_CMD)
	    {
		/* Execute the command directly. */
		ccline.cmdbuff = FUNC32((char_u *)p);
		cmdwin_result = CAR;
	    }
	    else
	    {
		/* First need to cancel what we were doing. */
		ccline.cmdbuff = NULL;
		FUNC29(':');
		FUNC28((char_u *)p);
		FUNC29(CAR);
	    }
	}
	else if (cmdwin_result == K_XF2)	/* :qa typed */
	{
	    ccline.cmdbuff = FUNC32((char_u *)"qa");
	    cmdwin_result = CAR;
	}
	else if (cmdwin_result == Ctrl_C)
	{
	    /* :q or :close, don't execute any command
	     * and don't modify the cmd window. */
	    ccline.cmdbuff = NULL;
	}
	else
	    ccline.cmdbuff = FUNC32(FUNC20());
	if (ccline.cmdbuff == NULL)
	    cmdwin_result = Ctrl_C;
	else
	{
	    ccline.cmdlen = (int)FUNC2(ccline.cmdbuff);
	    ccline.cmdbufflen = ccline.cmdlen + 1;
	    ccline.cmdpos = curwin->w_cursor.col;
	    if (ccline.cmdpos > ccline.cmdlen)
		ccline.cmdpos = ccline.cmdlen;
	    if (cmdwin_result == K_IGNORE)
	    {
		FUNC24();
		FUNC23();
	    }
	}

# ifdef FEAT_AUTOCMD
	/* Don't execute autocommands while deleting the window. */
	block_autocmds();
# endif
	wp = curwin;
	bp = curbuf;
	FUNC34(old_curwin);
	FUNC33(wp, TRUE);

	/* win_close() may have already wiped the buffer when 'bh' is
	 * set to 'wipe' */
	if (FUNC9(bp))
	    FUNC11(NULL, bp, DOBUF_WIPE, FALSE);

	/* Restore window sizes. */
	FUNC35(&winsizes);

# ifdef FEAT_AUTOCMD
	unblock_autocmds();
# endif
    }

    FUNC13(&winsizes);
    restart_edit = save_restart_edit;
# ifdef FEAT_RIGHTLEFT
    cmdmsg_rl = save_cmdmsg_rl;
# endif

    State = save_State;
# ifdef FEAT_MOUSE
    setmouse();
# endif

    return cmdwin_result;
}