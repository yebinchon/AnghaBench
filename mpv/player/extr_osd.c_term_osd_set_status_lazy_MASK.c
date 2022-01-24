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
struct MPContext {char* term_osd_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct MPContext*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 

__attribute__((used)) static void FUNC5(struct MPContext *mpctx, const char *text)
{
    FUNC2(mpctx->term_osd_status);
    mpctx->term_osd_status = FUNC3(mpctx, text);

    int w = 80, h = 24;
    FUNC4(&w, &h);
    if (FUNC1(mpctx->term_osd_status) > w && !FUNC0(mpctx->term_osd_status, '\n'))
        mpctx->term_osd_status[w] = '\0';
}