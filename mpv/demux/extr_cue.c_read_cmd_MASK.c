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
struct bstr {scalar_t__ len; int /*<<< orphan*/ * start; } ;
typedef  enum cue_command { ____Placeholder_cue_command } cue_command ;
struct TYPE_2__ {int command; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int CUE_EMPTY ; 
 int CUE_ERROR ; 
 int /*<<< orphan*/  WHITESPACE ; 
 struct bstr FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bstr,struct bstr) ; 
 struct bstr FUNC2 (struct bstr,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bstr,struct bstr*) ; 
 struct bstr FUNC4 (struct bstr) ; 
 struct bstr FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cue_command_strings ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cue_command FUNC7(struct bstr *data, struct bstr *out_params)
{
    struct bstr line = FUNC5(FUNC3(*data, data));
    line = FUNC4(line);
    if (line.len == 0)
        return CUE_EMPTY;
    for (int n = 0; cue_command_strings[n].command != -1; n++) {
        struct bstr name = FUNC0(cue_command_strings[n].text);
        if (FUNC1(line, name)) {
            struct bstr rest = FUNC2(line, name.len);
            if (rest.len && !FUNC6(WHITESPACE, rest.start[0]))
                continue;
            if (out_params)
                *out_params = FUNC4(rest);
            return cue_command_strings[n].command;
        }
    }
    return CUE_ERROR;
}