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
struct MPContext {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct MPContext*,int) ; 
 int FUNC1 (struct MPContext*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 

char *FUNC4(struct MPContext *mpctx, int chapter)
{
    char *name = FUNC0(mpctx, chapter);
    char *dname = NULL;
    if (name) {
        dname = FUNC2(NULL, "(%d) %s", chapter + 1, name);
    } else if (chapter < -1) {
        dname = FUNC3(NULL, "(unavailable)");
    } else {
        int chapter_count = FUNC1(mpctx);
        if (chapter_count <= 0)
            dname = FUNC2(NULL, "(%d)", chapter + 1);
        else
            dname = FUNC2(NULL, "(%d) of %d", chapter + 1,
                                    chapter_count);
    }
    return dname;
}