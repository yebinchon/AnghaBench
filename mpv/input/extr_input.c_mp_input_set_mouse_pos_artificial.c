
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int x0; int x1; int y0; int y1; } ;
struct mp_cmd {int mouse_move; int mouse_x; int mouse_y; } ;
struct input_ctx {int mouse_vo_x; int mouse_vo_y; int cmd_queue; int mouse_event_counter; scalar_t__ mouse_src_mangle; struct mp_rect mouse_dst; struct mp_rect mouse_src; scalar_t__ mouse_mangle; } ;


 int MPCLAMP (int,int,int) ;
 int MP_KEY_MOUSE_MOVE ;
 int MP_TRACE (struct input_ctx*,char*,int,int) ;
 int bstr0 (char*) ;
 struct mp_cmd* get_cmd_from_keys (struct input_ctx*,int *,int ) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 struct mp_cmd* mp_input_parse_cmd (struct input_ctx*,int ,char*) ;
 int mp_input_queue_cmd (struct input_ctx*,struct mp_cmd*) ;
 struct mp_cmd* queue_peek_tail (int *) ;
 int queue_remove (int *,struct mp_cmd*) ;
 scalar_t__ should_drop_cmd (struct input_ctx*,struct mp_cmd*) ;
 int talloc_free (struct mp_cmd*) ;
 int update_mouse_section (struct input_ctx*) ;

void mp_input_set_mouse_pos_artificial(struct input_ctx *ictx, int x, int y)
{
    input_lock(ictx);
    MP_TRACE(ictx, "mouse move %d/%d\n", x, y);

    if (ictx->mouse_vo_x == x && ictx->mouse_vo_y == y) {
        input_unlock(ictx);
        return;
    }

    if (ictx->mouse_mangle) {
        struct mp_rect *src = &ictx->mouse_src;
        struct mp_rect *dst = &ictx->mouse_dst;
        x = MPCLAMP(x, dst->x0, dst->x1) - dst->x0;
        y = MPCLAMP(y, dst->y0, dst->y1) - dst->y0;
        if (ictx->mouse_src_mangle) {
            x = x * 1.0 / (dst->x1 - dst->x0) * (src->x1 - src->x0) + src->x0;
            y = y * 1.0 / (dst->y1 - dst->y0) * (src->y1 - src->y0) + src->y0;
        }
        MP_TRACE(ictx, "-> %d/%d\n", x, y);
    }

    ictx->mouse_event_counter++;
    ictx->mouse_vo_x = x;
    ictx->mouse_vo_y = y;

    update_mouse_section(ictx);
    struct mp_cmd *cmd = get_cmd_from_keys(ictx, ((void*)0), MP_KEY_MOUSE_MOVE);
    if (!cmd)
        cmd = mp_input_parse_cmd(ictx, bstr0("ignore"), "<internal>");

    if (cmd) {
        cmd->mouse_move = 1;
        cmd->mouse_x = x;
        cmd->mouse_y = y;
        if (should_drop_cmd(ictx, cmd)) {
            talloc_free(cmd);
        } else {

            struct mp_cmd *tail = queue_peek_tail(&ictx->cmd_queue);
            if (tail && tail->mouse_move) {
                queue_remove(&ictx->cmd_queue, tail);
                talloc_free(tail);
            }
            mp_input_queue_cmd(ictx, cmd);
        }
    }
    input_unlock(ictx);
}
