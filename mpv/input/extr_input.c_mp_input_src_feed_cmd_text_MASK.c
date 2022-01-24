#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_input_src_internal {size_t cmd_buffer; size_t cmd_buffer_size; int drop; } ;
struct mp_input_src {int /*<<< orphan*/  input_ctx; int /*<<< orphan*/  log; struct mp_input_src_internal* in; } ;
struct mp_cmd {int dummy; } ;
struct TYPE_5__ {size_t member_0; size_t member_1; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 size_t CMD_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct mp_input_src*,char*) ; 
 TYPE_1__ FUNC1 (TYPE_1__) ; 
 char* FUNC2 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,char*,size_t) ; 
 struct mp_cmd* FUNC4 (int /*<<< orphan*/ ,TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mp_cmd*) ; 
 size_t FUNC6 (struct mp_input_src_internal*,size_t) ; 

void FUNC7(struct mp_input_src *src, char *buf, size_t len)
{
    struct mp_input_src_internal *in = src->in;
    if (!in->cmd_buffer)
        in->cmd_buffer = FUNC6(in, CMD_BUFFER);
    while (len) {
        char *next = FUNC2(buf, '\n', len);
        bool term = !!next;
        next = next ? next + 1 : buf + len;
        size_t copy = next - buf;
        bool overflow = copy > CMD_BUFFER - in->cmd_buffer_size;
        if (overflow || in->drop) {
            in->cmd_buffer_size = 0;
            in->drop = overflow || !term;
            FUNC0(src, "Dropping overlong line.\n");
        } else {
            FUNC3(in->cmd_buffer + in->cmd_buffer_size, buf, copy);
            in->cmd_buffer_size += copy;
            buf += copy;
            len -= copy;
            if (term) {
                bstr s = {in->cmd_buffer, in->cmd_buffer_size};
                s = FUNC1(s);
                struct mp_cmd *cmd = FUNC4(src->log, s, "<>");
                if (cmd)
                    FUNC5(src->input_ctx, cmd);
                in->cmd_buffer_size = 0;
            }
        }
    }
}