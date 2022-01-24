#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  enum UI_string_types { ____Placeholder_UI_string_types } UI_string_types ;
struct TYPE_11__ {char const* action_desc; char const* ok_chars; char const* cancel_chars; } ;
struct TYPE_12__ {TYPE_1__ boolean_data; } ;
struct TYPE_13__ {TYPE_2__ _; } ;
typedef  TYPE_3__ UI_STRING ;
struct TYPE_14__ {int /*<<< orphan*/  strings; } ;
typedef  TYPE_4__ UI ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  UI_F_GENERAL_ALLOCATE_BOOLEAN ; 
 int /*<<< orphan*/  UI_R_COMMON_OK_AND_CANCEL_CHARACTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,char const*,int,int,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const) ; 

__attribute__((used)) static int FUNC6(UI *ui,
                                    const char *prompt,
                                    const char *action_desc,
                                    const char *ok_chars,
                                    const char *cancel_chars,
                                    int prompt_freeable,
                                    enum UI_string_types type,
                                    int input_flags, char *result_buf)
{
    int ret = -1;
    UI_STRING *s;
    const char *p;

    if (ok_chars == NULL) {
        FUNC0(UI_F_GENERAL_ALLOCATE_BOOLEAN, ERR_R_PASSED_NULL_PARAMETER);
    } else if (cancel_chars == NULL) {
        FUNC0(UI_F_GENERAL_ALLOCATE_BOOLEAN, ERR_R_PASSED_NULL_PARAMETER);
    } else {
        for (p = ok_chars; *p != '\0'; p++) {
            if (FUNC5(cancel_chars, *p) != NULL) {
                FUNC0(UI_F_GENERAL_ALLOCATE_BOOLEAN,
                      UI_R_COMMON_OK_AND_CANCEL_CHARACTERS);
            }
        }

        s = FUNC3(ui, prompt, prompt_freeable,
                                    type, input_flags, result_buf);

        if (s != NULL) {
            if (FUNC1(ui) >= 0) {
                s->_.boolean_data.action_desc = action_desc;
                s->_.boolean_data.ok_chars = ok_chars;
                s->_.boolean_data.cancel_chars = cancel_chars;
                ret = FUNC4(ui->strings, s);
                /*
                 * sk_push() returns 0 on error. Let's adapt that
                 */
                if (ret <= 0) {
                    ret--;
                    FUNC2(s);
                }
            } else
                FUNC2(s);
        }
    }
    return ret;
}