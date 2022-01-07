
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ escape_seq; int orig_line_len; size_t cursor_pos; char* prompt; int* escape_seq_buf; int hist_cur; TYPE_1__* line; } ;
struct TYPE_9__ {size_t len; char* buf; } ;


 int CHAR_CTRL_A ;
 int CHAR_CTRL_B ;
 int CHAR_CTRL_C ;
 int CHAR_CTRL_D ;
 int CHAR_CTRL_E ;
 int CHAR_CTRL_F ;
 int CHAR_CTRL_K ;
 int CHAR_CTRL_N ;
 int CHAR_CTRL_P ;
 int CHAR_CTRL_U ;
 int DEBUG_printf (char*,int,...) ;
 scalar_t__ ESEQ_ESC ;
 scalar_t__ ESEQ_ESC_BRACKET ;
 scalar_t__ ESEQ_ESC_BRACKET_DIGIT ;
 scalar_t__ ESEQ_ESC_O ;
 scalar_t__ ESEQ_NONE ;
 int ** MP_STATE_PORT (int ) ;
 scalar_t__ READLINE_HIST_SIZE ;
 int mp_hal_erase_line_from_cursor (size_t) ;
 int mp_hal_move_cursor_back (int) ;
 int mp_hal_stdout_tx_str (char*) ;
 int mp_hal_stdout_tx_strn (char*,int) ;
 int mp_plat_print ;
 size_t mp_repl_autocomplete (char*,int,int *,char const**) ;
 int readline_hist ;
 int readline_push_history (scalar_t__) ;
 TYPE_8__ rl ;
 int vstr_add_str (TYPE_1__*,int *) ;
 int vstr_cut_out_bytes (TYPE_1__*,int,int) ;
 int vstr_cut_tail_bytes (TYPE_1__*,size_t) ;
 int vstr_ins_byte (TYPE_1__*,size_t,int ) ;
 int vstr_ins_char (TYPE_1__*,size_t,int) ;
 int vstr_len (TYPE_1__*) ;
 scalar_t__ vstr_null_terminated_str (TYPE_1__*) ;

int readline_process_char(int c) {
    size_t last_line_len = rl.line->len;
    int redraw_step_back = 0;
    bool redraw_from_cursor = 0;
    int redraw_step_forward = 0;
    if (rl.escape_seq == ESEQ_NONE) {
        if (CHAR_CTRL_A <= c && c <= CHAR_CTRL_E && vstr_len(rl.line) == rl.orig_line_len) {

            return c;
        } else if (c == CHAR_CTRL_A) {

            goto home_key;





        } else if (c == CHAR_CTRL_C) {

            return c;





        } else if (c == CHAR_CTRL_E) {

            goto end_key;
        } else if (c == '\r') {

            mp_hal_stdout_tx_str("\r\n");
            readline_push_history(vstr_null_terminated_str(rl.line) + rl.orig_line_len);
            return 0;
        } else if (c == 27) {

            rl.escape_seq = ESEQ_ESC;
        } else if (c == 8 || c == 127) {

            if (rl.cursor_pos > rl.orig_line_len) {
                int nspace = 1;



                vstr_cut_out_bytes(rl.line, rl.cursor_pos - nspace, nspace);

                redraw_step_back = nspace;
                redraw_from_cursor = 1;
            }
        } else if (32 <= c && c <= 126) {

            vstr_ins_char(rl.line, rl.cursor_pos, c);

            redraw_from_cursor = 1;
            redraw_step_forward = 1;
        }
    } else if (rl.escape_seq == ESEQ_ESC) {
        switch (c) {
            case '[':
                rl.escape_seq = ESEQ_ESC_BRACKET;
                break;
            case 'O':
                rl.escape_seq = ESEQ_ESC_O;
                break;
            default:
                DEBUG_printf("(ESC %d)", c);
                rl.escape_seq = ESEQ_NONE;
        }
    } else if (rl.escape_seq == ESEQ_ESC_BRACKET) {
        if ('0' <= c && c <= '9') {
            rl.escape_seq = ESEQ_ESC_BRACKET_DIGIT;
            rl.escape_seq_buf[0] = c;
        } else {
            rl.escape_seq = ESEQ_NONE;
            if (c == 'A') {




                if (rl.hist_cur + 1 < (int)READLINE_HIST_SIZE && MP_STATE_PORT(readline_hist)[rl.hist_cur + 1] != ((void*)0)) {

                    rl.hist_cur += 1;

                    rl.line->len = rl.orig_line_len;
                    vstr_add_str(rl.line, MP_STATE_PORT(readline_hist)[rl.hist_cur]);

                    redraw_step_back = rl.cursor_pos - rl.orig_line_len;
                    redraw_from_cursor = 1;
                    redraw_step_forward = rl.line->len - rl.orig_line_len;
                }
            } else if (c == 'B') {




                if (rl.hist_cur >= 0) {

                    rl.hist_cur -= 1;

                    vstr_cut_tail_bytes(rl.line, rl.line->len - rl.orig_line_len);
                    if (rl.hist_cur >= 0) {
                        vstr_add_str(rl.line, MP_STATE_PORT(readline_hist)[rl.hist_cur]);
                    }

                    redraw_step_back = rl.cursor_pos - rl.orig_line_len;
                    redraw_from_cursor = 1;
                    redraw_step_forward = rl.line->len - rl.orig_line_len;
                }
            } else if (c == 'C') {




                if (rl.cursor_pos < rl.line->len) {
                    redraw_step_forward = 1;
                }
            } else if (c == 'D') {




                if (rl.cursor_pos > rl.orig_line_len) {
                    redraw_step_back = 1;
                }
            } else if (c == 'H') {

                goto home_key;
            } else if (c == 'F') {

                goto end_key;
            } else {
                DEBUG_printf("(ESC [ %d)", c);
            }
        }
    } else if (rl.escape_seq == ESEQ_ESC_BRACKET_DIGIT) {
        if (c == '~') {
            if (rl.escape_seq_buf[0] == '1' || rl.escape_seq_buf[0] == '7') {
home_key:
                redraw_step_back = rl.cursor_pos - rl.orig_line_len;
            } else if (rl.escape_seq_buf[0] == '4' || rl.escape_seq_buf[0] == '8') {
end_key:
                redraw_step_forward = rl.line->len - rl.cursor_pos;
            } else if (rl.escape_seq_buf[0] == '3') {




                if (rl.cursor_pos < rl.line->len) {
                    vstr_cut_out_bytes(rl.line, rl.cursor_pos, 1);
                    redraw_from_cursor = 1;
                }
            } else {
                DEBUG_printf("(ESC [ %c %d)", rl.escape_seq_buf[0], c);
            }
        } else {
            DEBUG_printf("(ESC [ %c %d)", rl.escape_seq_buf[0], c);
        }
        rl.escape_seq = ESEQ_NONE;
    } else if (rl.escape_seq == ESEQ_ESC_O) {
        switch (c) {
            case 'H':
                goto home_key;
            case 'F':
                goto end_key;
            default:
                DEBUG_printf("(ESC O %d)", c);
                rl.escape_seq = ESEQ_NONE;
        }
    } else {
        rl.escape_seq = ESEQ_NONE;
    }


    if (redraw_step_back > 0) {
        mp_hal_move_cursor_back(redraw_step_back);
        rl.cursor_pos -= redraw_step_back;
    }
    if (redraw_from_cursor) {
        if (rl.line->len < last_line_len) {

            mp_hal_erase_line_from_cursor(last_line_len - rl.cursor_pos);
        }

        mp_hal_stdout_tx_strn(rl.line->buf + rl.cursor_pos, rl.line->len - rl.cursor_pos);

        mp_hal_move_cursor_back(rl.line->len - (rl.cursor_pos + redraw_step_forward));
        rl.cursor_pos += redraw_step_forward;
    } else if (redraw_step_forward > 0) {

        mp_hal_stdout_tx_strn(rl.line->buf + rl.cursor_pos, redraw_step_forward);
        rl.cursor_pos += redraw_step_forward;
    }

    return -1;
}
