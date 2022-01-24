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
typedef  int WORD ;
typedef  char WCHAR ;
struct TYPE_5__ {int style; char* text; int /*<<< orphan*/  bound; } ;
struct TYPE_4__ {int numParts; int /*<<< orphan*/  Self; TYPE_2__* parts; TYPE_2__ part0; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  TYPE_2__ STATUSWINDOWPART ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int INT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int SBT_OWNERDRAW ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static BOOL
FUNC11 (STATUS_INFO *infoPtr, INT nPart, WORD style,
		    LPWSTR text, BOOL isW)
{
    STATUSWINDOWPART *part=NULL;
    BOOL changed = FALSE;
    INT  oldStyle;

    if (style & SBT_OWNERDRAW) {
         FUNC4("part %d, text %p\n",nPart,text);
    }
    else FUNC4("part %d, text %s\n", nPart, FUNC6(text, isW));

    /* MSDN says: "If the parameter is set to SB_SIMPLEID (255), the status
     * window is assumed to be a simple window */

    if (nPart == 0x00ff) {
	part = &infoPtr->part0;
    } else {
	if (infoPtr->parts && nPart >= 0 && nPart < infoPtr->numParts) {
	    part = &infoPtr->parts[nPart];
	}
    }
    if (!part) return FALSE;

    if (part->style != style)
	changed = TRUE;

    oldStyle = part->style;
    part->style = style;
    if (style & SBT_OWNERDRAW) {
        if (!(oldStyle & SBT_OWNERDRAW))
            FUNC1 (part->text);
        part->text = text;
    } else {
	LPWSTR ntext;
	WCHAR  *idx;

	if (text && !isW) {
	    LPCSTR atxt = (LPCSTR)text;
            DWORD len = FUNC3( CP_ACP, 0, atxt, -1, NULL, 0 );
	    ntext = FUNC0( (len + 1)*sizeof(WCHAR) );
	    if (!ntext) return FALSE;
            FUNC3( CP_ACP, 0, atxt, -1, ntext, len );
	} else if (text) {
	    ntext = FUNC0( (FUNC10(text) + 1)*sizeof(WCHAR) );
	    if (!ntext) return FALSE;
	    FUNC9 (ntext, text);
	} else ntext = 0;

	/* replace nonprintable characters with spaces */
	if (ntext) {
	    idx = ntext;
	    while (*idx) {
	        if(!FUNC7(*idx))
	            *idx = ' ';
	        idx++;
	    }
	}

	/* check if text is unchanged -> no need to redraw */
	if (text) {
	    if (!changed && part->text && !FUNC8(ntext, part->text)) {
		FUNC1(ntext);
		return TRUE;
	    }
	} else {
	    if (!changed && !part->text)
		return TRUE;
	}

	if (!(oldStyle & SBT_OWNERDRAW))
	    FUNC1 (part->text);
	part->text = ntext;
    }
    FUNC2(infoPtr->Self, &part->bound, FALSE);
    FUNC5(infoPtr->Self);

    return TRUE;
}