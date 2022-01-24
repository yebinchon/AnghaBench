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
typedef  int /*<<< orphan*/  UI ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* prompt_string ; 

int FUNC6(char *buf, int min, int len, const char *prompt,
                           int verify)
{
    int ret = -1;
    char buff[BUFSIZ];
    UI *ui;

    if ((prompt == NULL) && (prompt_string[0] != '\0'))
        prompt = prompt_string;
    ui = FUNC4();
    if (ui == NULL)
        return ret;
    if (FUNC1(ui, prompt, 0, buf, min,
                            (len >= BUFSIZ) ? BUFSIZ - 1 : len) < 0
        || (verify
            && FUNC2(ui, prompt, 0, buff, min,
                                    (len >= BUFSIZ) ? BUFSIZ - 1 : len,
                                    buf) < 0))
        goto end;
    ret = FUNC5(ui);
    FUNC0(buff, BUFSIZ);
 end:
    FUNC3(ui);
    return ret;
}