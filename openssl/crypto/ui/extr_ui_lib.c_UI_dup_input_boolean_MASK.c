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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  UIT_BOOLEAN ; 
 int /*<<< orphan*/  UI_F_UI_DUP_INPUT_BOOLEAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,int,int /*<<< orphan*/ ,int,char*) ; 

int FUNC4(UI *ui, const char *prompt, const char *action_desc,
                         const char *ok_chars, const char *cancel_chars,
                         int flags, char *result_buf)
{
    char *prompt_copy = NULL;
    char *action_desc_copy = NULL;
    char *ok_chars_copy = NULL;
    char *cancel_chars_copy = NULL;

    if (prompt != NULL) {
        prompt_copy = FUNC1(prompt);
        if (prompt_copy == NULL) {
            FUNC2(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (action_desc != NULL) {
        action_desc_copy = FUNC1(action_desc);
        if (action_desc_copy == NULL) {
            FUNC2(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (ok_chars != NULL) {
        ok_chars_copy = FUNC1(ok_chars);
        if (ok_chars_copy == NULL) {
            FUNC2(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if (cancel_chars != NULL) {
        cancel_chars_copy = FUNC1(cancel_chars);
        if (cancel_chars_copy == NULL) {
            FUNC2(UI_F_UI_DUP_INPUT_BOOLEAN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    return FUNC3(ui, prompt_copy, action_desc_copy,
                                    ok_chars_copy, cancel_chars_copy, 1,
                                    UIT_BOOLEAN, flags, result_buf);
 err:
    FUNC0(prompt_copy);
    FUNC0(action_desc_copy);
    FUNC0(ok_chars_copy);
    FUNC0(cancel_chars_copy);
    return -1;
}