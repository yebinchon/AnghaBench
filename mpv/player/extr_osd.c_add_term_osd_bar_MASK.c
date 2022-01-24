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
struct MPOpts {int /*<<< orphan*/  term_osd_bar_chars; } ;
struct MPContext {struct MPOpts* opts; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct MPContext *mpctx, char **line, int width)
{
    struct MPOpts *opts = mpctx->opts;

    if (width < 5)
        return;

    int pos = FUNC4(mpctx, false) * (width - 3);
    pos = FUNC1(pos, 0, width - 3);

    bstr chars = FUNC2(opts->term_osd_bar_chars);
    bstr parts[5];
    for (int n = 0; n < 5; n++)
        parts[n] = FUNC3(chars, &chars);

    FUNC5(line, "\r%.*s", FUNC0(parts[0]));
    for (int n = 0; n < pos; n++)
        FUNC5(line, "%.*s", FUNC0(parts[1]));
    FUNC5(line, "%.*s", FUNC0(parts[2]));
    for (int n = 0; n < width - 3 - pos; n++)
        FUNC5(line, "%.*s", FUNC0(parts[3]));
    FUNC5(line, "%.*s", FUNC0(parts[4]));
}