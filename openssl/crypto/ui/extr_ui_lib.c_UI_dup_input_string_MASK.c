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
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  UIT_PROMPT ; 
 int /*<<< orphan*/  UI_F_UI_DUP_INPUT_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,char*,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(UI *ui, const char *prompt, int flags,
                        char *result_buf, int minsize, int maxsize)
{
    char *prompt_copy = NULL;

    if (prompt != NULL) {
        prompt_copy = FUNC0(prompt);
        if (prompt_copy == NULL) {
            FUNC1(UI_F_UI_DUP_INPUT_STRING, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    return FUNC2(ui, prompt_copy, 1,
                                   UIT_PROMPT, flags, result_buf, minsize,
                                   maxsize, NULL);
}