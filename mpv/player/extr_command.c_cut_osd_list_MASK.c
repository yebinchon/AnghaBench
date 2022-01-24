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
struct MPContext {int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *FUNC8(struct MPContext *mpctx, char *text, int pos)
{
    int screen_h, font_h;
    FUNC2(mpctx->osd, &screen_h, &font_h);
    int max_lines = screen_h / FUNC0(font_h, 1) - 1;

    if (!text || max_lines < 5)
        return text;

    int count = FUNC1(text);
    if (count <= max_lines)
        return text;

    char *new = FUNC7(NULL, "");

    int start = FUNC0(pos - max_lines / 2, 0);
    if (start == 1)
        start = 0; // avoid weird transition when pad_h becomes visible
    int pad_h = start > 0;

    int space = max_lines - pad_h - 1;
    int pad_t = count - start > space;
    if (!pad_t)
        start = count - space;

    if (pad_h) {
        new = FUNC5(new, "\342\206\221 (%d hidden items)\n",
                                            start);
    }

    char *head = FUNC3(text, start);
    if (!head) {
        FUNC6(new);
        return text;
    }

    int lines_shown = max_lines - pad_h - pad_t;
    char *tail = FUNC3(head, lines_shown);
    new = FUNC5(new, "%.*s",
                            (int)(tail ? tail - head : FUNC4(head)), head);
    if (pad_t) {
        new = FUNC5(new, "\342\206\223 (%d hidden items)\n",
                                            count - start - lines_shown + 1);
    }

    FUNC6(text);
    return new;
}