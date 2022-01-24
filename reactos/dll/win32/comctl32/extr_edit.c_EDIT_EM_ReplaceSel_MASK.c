#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__ right; scalar_t__ left; } ;
struct TYPE_20__ {scalar_t__ selection_start; scalar_t__ selection_end; scalar_t__ text_width; scalar_t__ buffer_limit; scalar_t__ text; int style; scalar_t__ line_count; int text_length; char* undo_text; scalar_t__ undo_insert_count; scalar_t__ undo_position; scalar_t__ x_offset; int flags; TYPE_1__ format_rect; } ;
typedef  char* LPWSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HRGN ;
typedef  TYPE_2__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int EF_MODIFIED ; 
 int EF_UPDATE ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  EN_MAXTEXT ; 
 int ES_AUTOHSCROLL ; 
 int ES_AUTOVSCROLL ; 
 int ES_CENTER ; 
 int ES_LOWERCASE ; 
 int ES_MULTILINE ; 
 int ES_RIGHT ; 
 int ES_UPPERCASE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (char const*,scalar_t__) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 scalar_t__ FUNC22 (TYPE_2__*) ; 
 char* FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC30(EDITSTATE *es, BOOL can_undo, const WCHAR *lpsz_replace, UINT strl,
                               BOOL send_update, BOOL honor_limit)
{
	UINT tl = FUNC21(es);
	UINT utl;
	UINT s;
	UINT e;
	UINT i;
	UINT size;
	LPWSTR p;
	HRGN hrgn = 0;
	LPWSTR buf = NULL;
	UINT bufl;

	FUNC17("%s, can_undo %d, send_update %d\n",
	    FUNC20(lpsz_replace, strl), can_undo, send_update);

	s = es->selection_start;
	e = es->selection_end;

	FUNC9(es);
	if ((s == e) && !strl)
		return;

	FUNC16(s, e);

	size = tl - (e - s) + strl;
	if (!size)
		es->text_width = 0;

	/* Issue the EN_MAXTEXT notification and continue with replacing text
         * so that buffer limit is honored. */
	if ((honor_limit) && (size > es->buffer_limit)) {
		FUNC12(es, EN_MAXTEXT);
		/* Buffer limit can be smaller than the actual length of text in combobox */
		if (es->buffer_limit < (tl - (e-s)))
			strl = 0;
		else
			strl = FUNC26(strl, es->buffer_limit - (tl - (e-s)));
	}

	if (!FUNC10(es, tl - (e - s) + strl))
		return;

	if (e != s) {
		/* there is something to be deleted */
		FUNC17("deleting stuff.\n");
		bufl = e - s;
		buf = FUNC23((bufl + 1) * sizeof(WCHAR));
		if (!buf) return;
		FUNC25(buf, es->text + s, bufl * sizeof(WCHAR));
		buf[bufl] = 0; /* ensure 0 termination */
		/* now delete */
		FUNC27(es->text + s, es->text + e);
                FUNC29(es);
	}
	if (strl) {
		/* there is an insertion */
		tl = FUNC21(es);
		FUNC17("inserting stuff (tl %d, strl %d, selstart %d (%s), text %s)\n", tl, strl, s, FUNC19(es->text + s), FUNC19(es->text));
		for (p = es->text + tl ; p >= es->text + s ; p--)
			p[strl] = p[0];
		for (i = 0 , p = es->text + s ; i < strl ; i++)
			p[i] = lpsz_replace[i];
		if(es->style & ES_UPPERCASE)
			FUNC1(p, strl);
		else if(es->style & ES_LOWERCASE)
			FUNC0(p, strl);
                FUNC29(es);
	}
	if (es->style & ES_MULTILINE)
	{
		INT st = FUNC26(es->selection_start, es->selection_end);
		INT vlc = FUNC22(es);

		hrgn = FUNC2(0, 0, 0, 0);
		FUNC4(es, st, st + strl,
				strl - FUNC18(es->selection_end - es->selection_start), hrgn);
		/* if text is too long undo all changes */
		if (honor_limit && !(es->style & ES_AUTOVSCROLL) && (es->line_count > vlc)) {
			if (strl)
				FUNC27(es->text + e, es->text + e + strl);
			if (e != s)
				for (i = 0 , p = es->text ; i < e - s ; i++)
					p[i + s] = buf[i];
                        FUNC29(es);
			FUNC4(es, s, e,
				FUNC18(es->selection_end - es->selection_start) - strl, hrgn);
			strl = 0;
			e = s;
			hrgn = FUNC2(0, 0, 0, 0);
			FUNC12(es, EN_MAXTEXT);
		}
	}
	else {
		INT fw = es->format_rect.right - es->format_rect.left;
		FUNC9(es);
		FUNC5(es);
		/* remove chars that don't fit */
		if (honor_limit && !(es->style & ES_AUTOHSCROLL) && (es->text_width > fw)) {
			while ((es->text_width > fw) && s + strl >= s) {
				FUNC27(es->text + s + strl - 1, es->text + s + strl);
				strl--;
				es->text_length = -1;
				FUNC9(es);
				FUNC5(es);
			}
                        FUNC29(es);
			FUNC12(es, EN_MAXTEXT);
		}
	}

	if (e != s) {
		if (can_undo) {
			utl = FUNC28(es->undo_text);
			if (!es->undo_insert_count && (*es->undo_text && (s == es->undo_position))) {
				/* undo-buffer is extended to the right */
				FUNC11(es, utl + e - s);
				FUNC25(es->undo_text + utl, buf, (e - s)*sizeof(WCHAR));
				(es->undo_text + utl)[e - s] = 0; /* ensure 0 termination */
			} else if (!es->undo_insert_count && (*es->undo_text && (e == es->undo_position))) {
				/* undo-buffer is extended to the left */
				FUNC11(es, utl + e - s);
				for (p = es->undo_text + utl ; p >= es->undo_text ; p--)
					p[e - s] = p[0];
				for (i = 0 , p = es->undo_text ; i < e - s ; i++)
					p[i] = buf[i];
				es->undo_position = s;
			} else {
				/* new undo-buffer */
				FUNC11(es, e - s);
				FUNC25(es->undo_text, buf, (e - s)*sizeof(WCHAR));
				es->undo_text[e - s] = 0; /* ensure 0 termination */
				es->undo_position = s;
			}
			/* any deletion makes the old insertion-undo invalid */
			es->undo_insert_count = 0;
		} else
			FUNC6(es);
	}
	if (strl) {
		if (can_undo) {
			if ((s == es->undo_position) ||
				((es->undo_insert_count) &&
				(s == es->undo_position + es->undo_insert_count)))
				/*
				 * insertion is new and at delete position or
				 * an extension to either left or right
				 */
				es->undo_insert_count += strl;
			else {
				/* new insertion undo */
				es->undo_position = s;
				es->undo_insert_count = strl;
				/* new insertion makes old delete-buffer invalid */
				*es->undo_text = '\0';
			}
		} else
			FUNC6(es);
	}

	FUNC24(buf);

	s += strl;

	/* If text has been deleted and we're right or center aligned then scroll rightward */
	if (es->style & (ES_RIGHT | ES_CENTER))
	{
		INT delta = strl - FUNC18(es->selection_end - es->selection_start);

		if (delta < 0 && es->x_offset)
		{
			if (FUNC18(delta) > es->x_offset)
				es->x_offset = 0;
			else
				es->x_offset += delta;
		}
	}

	FUNC8(es, s, s, FALSE);
	es->flags |= EF_MODIFIED;
	if (send_update) es->flags |= EF_UPDATE;
	if (hrgn)
	{
		FUNC15(es, hrgn, TRUE);
		FUNC3(hrgn);
	}
	else
            FUNC14(es, NULL, TRUE);

	FUNC7(es);

	/* force scroll info update */
	FUNC13(es);


        if(send_update || (es->flags & EF_UPDATE))
	{
	    es->flags &= ~EF_UPDATE;
	    FUNC12(es, EN_CHANGE);
	}
	FUNC9(es);
}