#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bwriter_shader {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; scalar_t__ capacity; scalar_t__ size; } ;
struct TYPE_4__ {scalar_t__ status; int line_no; TYPE_1__ messages; struct bwriter_shader* shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PARSE_ERR ; 
 scalar_t__ PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct bwriter_shader*) ; 
 TYPE_2__ asm_ctx ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

struct bwriter_shader *FUNC5(char **messages)
{
    struct bwriter_shader *ret = NULL;

    asm_ctx.shader = NULL;
    asm_ctx.status = PARSE_SUCCESS;
    asm_ctx.messages.size = asm_ctx.messages.capacity = 0;
    asm_ctx.line_no = 1;

    FUNC2();

    if (asm_ctx.status != PARSE_ERR)
        ret = asm_ctx.shader;
    else if (asm_ctx.shader)
        FUNC1(asm_ctx.shader);

    if (messages)
    {
        if (asm_ctx.messages.size)
        {
            /* Shrink the buffer to the used size */
            *messages = FUNC4(asm_ctx.messages.string, asm_ctx.messages.size + 1);
            if (!*messages)
            {
                FUNC0("Out of memory, no messages reported\n");
                FUNC3(asm_ctx.messages.string);
            }
        }
        else
        {
            *messages = NULL;
        }
    }
    else
    {
        if (asm_ctx.messages.capacity)
            FUNC3(asm_ctx.messages.string);
    }

    return ret;
}