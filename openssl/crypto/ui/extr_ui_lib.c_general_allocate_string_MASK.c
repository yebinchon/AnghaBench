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
struct TYPE_11__ {int result_minsize; int result_maxsize; char const* test_buf; } ;
struct TYPE_12__ {TYPE_1__ string_data; } ;
struct TYPE_13__ {TYPE_2__ _; } ;
typedef  TYPE_3__ UI_STRING ;
struct TYPE_14__ {int /*<<< orphan*/  strings; } ;
typedef  TYPE_4__ UI ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,char const*,int,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(UI *ui, const char *prompt,
                                   int prompt_freeable,
                                   enum UI_string_types type, int input_flags,
                                   char *result_buf, int minsize, int maxsize,
                                   const char *test_buf)
{
    int ret = -1;
    UI_STRING *s = FUNC2(ui, prompt, prompt_freeable,
                                           type, input_flags, result_buf);

    if (s != NULL) {
        if (FUNC0(ui) >= 0) {
            s->_.string_data.result_minsize = minsize;
            s->_.string_data.result_maxsize = maxsize;
            s->_.string_data.test_buf = test_buf;
            ret = FUNC3(ui->strings, s);
            /* sk_push() returns 0 on error.  Let's adapt that */
            if (ret <= 0) {
                ret--;
                FUNC1(s);
            }
        } else
            FUNC1(s);
    }
    return ret;
}