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
struct mp_rect {int x0; int x1; int y0; int y1; } ;
struct mp_cmd {int mouse_move; int mouse_x; int mouse_y; } ;
struct input_ctx {int mouse_vo_x; int mouse_vo_y; int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  mouse_event_counter; scalar_t__ mouse_src_mangle; struct mp_rect mouse_dst; struct mp_rect mouse_src; scalar_t__ mouse_mangle; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  MP_KEY_MOUSE_MOVE ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct mp_cmd* FUNC3 (struct input_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_ctx*) ; 
 struct mp_cmd* FUNC6 (struct input_ctx*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_ctx*,struct mp_cmd*) ; 
 struct mp_cmd* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mp_cmd*) ; 
 scalar_t__ FUNC10 (struct input_ctx*,struct mp_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_ctx*) ; 

void FUNC13(struct input_ctx *ictx, int x, int y)
{
    FUNC4(ictx);
    FUNC1(ictx, "mouse move %d/%d\n", x, y);

    if (ictx->mouse_vo_x == x && ictx->mouse_vo_y == y) {
        FUNC5(ictx);
        return;
    }

    if (ictx->mouse_mangle) {
        struct mp_rect *src = &ictx->mouse_src;
        struct mp_rect *dst = &ictx->mouse_dst;
        x = FUNC0(x, dst->x0, dst->x1) - dst->x0;
        y = FUNC0(y, dst->y0, dst->y1) - dst->y0;
        if (ictx->mouse_src_mangle) {
            x = x * 1.0 / (dst->x1 - dst->x0) * (src->x1 - src->x0) + src->x0;
            y = y * 1.0 / (dst->y1 - dst->y0) * (src->y1 - src->y0) + src->y0;
        }
        FUNC1(ictx, "-> %d/%d\n", x, y);
    }

    ictx->mouse_event_counter++;
    ictx->mouse_vo_x = x;
    ictx->mouse_vo_y = y;

    FUNC12(ictx);
    struct mp_cmd *cmd = FUNC3(ictx, NULL, MP_KEY_MOUSE_MOVE);
    if (!cmd)
        cmd = FUNC6(ictx, FUNC2("ignore"), "<internal>");

    if (cmd) {
        cmd->mouse_move = true;
        cmd->mouse_x = x;
        cmd->mouse_y = y;
        if (FUNC10(ictx, cmd)) {
            FUNC11(cmd);
        } else {
            // Coalesce with previous mouse move events (i.e. replace it)
            struct mp_cmd *tail = FUNC8(&ictx->cmd_queue);
            if (tail && tail->mouse_move) {
                FUNC9(&ictx->cmd_queue, tail);
                FUNC11(tail);
            }
            FUNC7(ictx, cmd);
        }
    }
    FUNC5(ictx);
}