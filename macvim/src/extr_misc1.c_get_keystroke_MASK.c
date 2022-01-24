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
typedef  int /*<<< orphan*/  long_u ;
typedef  void* char_u ;

/* Variables and functions */
 int CMDLINE ; 
 int ESC ; 
 int FALSE ; 
 int KEYLEN_REMOVED ; 
 void* KS_MODIFIER ; 
 int K_HOR_SCROLLBAR ; 
 int K_IGNORE ; 
 int K_LEFTMOUSE ; 
 int K_SPECIAL ; 
 int K_SWIPEDOWN ; 
 int K_SWIPELEFT ; 
 int K_SWIPERIGHT ; 
 int K_SWIPEUP ; 
 int K_VER_SCROLLBAR ; 
 int FUNC0 (int) ; 
 void* NUL ; 
 int State ; 
 int FUNC1 (void*,void*) ; 
 void** FUNC2 (int) ; 
 int FUNC3 (int,void**,int,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (void**,int,int) ; 
 scalar_t__ has_mbyte ; 
 int intr_char ; 
 scalar_t__ FUNC7 (int) ; 
 int mapped_ctrl_c ; 
 int FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (void**,void**,size_t) ; 
 void* mod_mask ; 
 scalar_t__ must_redraw ; 
 int /*<<< orphan*/  need_wait_return ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int p_tm ; 
 int /*<<< orphan*/  p_ttimeout ; 
 int p_ttm ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (void**) ; 
 int FUNC13 (void**,int,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void**) ; 
 void** FUNC16 (void**,int) ; 

int
FUNC17()
{
    char_u	*buf = NULL;
    int		buflen = 150;
    int		maxlen;
    int		len = 0;
    int		n;
    int		save_mapped_ctrl_c = mapped_ctrl_c;
    int		waited = 0;

    mapped_ctrl_c = FALSE;	/* mappings are not used here */
    for (;;)
    {
	FUNC4();
	FUNC10();

	/* Leave some room for check_termcode() to insert a key code into (max
	 * 5 chars plus NUL).  And fix_input_buffer() can triple the number of
	 * bytes. */
	maxlen = (buflen - 6 - len) / 3;
	if (buf == NULL)
	    buf = FUNC2(buflen);
	else if (maxlen < 10)
	{
	    /* Need some more space. This might happen when receiving a long
	     * escape sequence. */
	    buflen += 100;
	    buf = FUNC16(buf, buflen);
	    maxlen = (buflen - 6 - len) / 3;
	}
	if (buf == NULL)
	{
	    FUNC5((long_u)buflen);
	    return ESC;  /* panic! */
	}

	/* First time: blocking wait.  Second time: wait up to 100ms for a
	 * terminal code to complete. */
	n = FUNC13(buf + len, maxlen, len == 0 ? -1L : 100L, 0);
	if (n > 0)
	{
	    /* Replace zero and CSI by a special key code. */
	    n = FUNC6(buf + len, n, FALSE);
	    len += n;
	    waited = 0;
	}
	else if (len > 0)
	    ++waited;	    /* keep track of the waiting time */

	/* Incomplete termcode and not timed out yet: get more characters */
	if ((n = FUNC3(1, buf, buflen, &len)) < 0
	       && (!p_ttimeout || waited * 100L < (p_ttm < 0 ? p_tm : p_ttm)))
	    continue;

	if (n == KEYLEN_REMOVED)  /* key code removed */
	{
	    if (must_redraw != 0 && !need_wait_return && (State & CMDLINE) == 0)
	    {
		/* Redrawing was postponed, do it now. */
		FUNC14(0);
		FUNC11(); /* put cursor back where it belongs */
	    }
	    continue;
	}
	if (n > 0)		/* found a termcode: adjust length */
	    len = n;
	if (len == 0)		/* nothing typed yet */
	    continue;

	/* Handle modifier and/or special key code. */
	n = buf[0];
	if (n == K_SPECIAL)
	{
	    n = FUNC1(buf[1], buf[2]);
	    if (buf[1] == KS_MODIFIER
		    || n == K_IGNORE
#ifdef FEAT_MOUSE
		    || (is_mouse_key(n) && n != K_LEFTMOUSE)
#endif
#ifdef FEAT_GUI
		    || n == K_VER_SCROLLBAR
		    || n == K_HOR_SCROLLBAR
# endif
# ifdef FEAT_GUI_MACVIM
		    || n == K_SWIPELEFT
		    || n == K_SWIPERIGHT
		    || n == K_SWIPEUP
		    || n == K_SWIPEDOWN
# endif
	       )
	    {
		if (buf[1] == KS_MODIFIER)
		    mod_mask = buf[2];
		len -= 3;
		if (len > 0)
		    FUNC9(buf, buf + 3, (size_t)len);
		continue;
	    }
	    break;
	}
#ifdef FEAT_MBYTE
	if (has_mbyte)
	{
	    if (MB_BYTE2LEN(n) > len)
		continue;	/* more bytes to get */
	    buf[len >= buflen ? buflen - 1 : len] = NUL;
	    n = (*mb_ptr2char)(buf);
	}
#endif
#ifdef UNIX
	if (n == intr_char)
	    n = ESC;
#endif
	break;
    }
    FUNC15(buf);

    mapped_ctrl_c = save_mapped_ctrl_c;
    return n;
}