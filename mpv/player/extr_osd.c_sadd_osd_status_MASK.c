#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sym ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {char** osd_msg; int osd_fractions; char* osd_status_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 
 char* FUNC5 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(char **buffer, struct MPContext *mpctx, int level)
{
    FUNC0(level >= 0 && level <= 3);
    if (level == 0)
        return;
    char *msg = mpctx->opts->osd_msg[level - 1];

    if (msg && msg[0]) {
        char *text = FUNC5(mpctx, msg);
        *buffer = FUNC10(*buffer, text);
        FUNC9(text);
    } else if (level >= 2) {
        bool fractions = mpctx->opts->osd_fractions;
        char sym[10];
        FUNC1(mpctx, sym, sizeof(sym));
        FUNC8(buffer, "%s ", sym);
        char *custom_msg = mpctx->opts->osd_status_msg;
        if (custom_msg && level == 3) {
            char *text = FUNC5(mpctx, custom_msg);
            *buffer = FUNC10(*buffer, text);
            FUNC9(text);
        } else {
            FUNC6(buffer, FUNC3(mpctx), fractions);
            if (level == 3) {
                FUNC8(buffer, " / ");
                FUNC6(buffer, FUNC4(mpctx), fractions);
                FUNC7(buffer, FUNC2(mpctx));
            }
        }
    }
}