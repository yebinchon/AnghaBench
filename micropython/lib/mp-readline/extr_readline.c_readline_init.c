
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ vstr_t ;
struct TYPE_5__ {int hist_cur; char const* prompt; int orig_line_len; int cursor_pos; scalar_t__* escape_seq_buf; int escape_seq; TYPE_1__* line; } ;


 int ESEQ_NONE ;
 int mp_hal_stdout_tx_str (char const*) ;
 int readline_auto_indent () ;
 TYPE_2__ rl ;

void readline_init(vstr_t *line, const char *prompt) {
    rl.line = line;
    rl.orig_line_len = line->len;
    rl.escape_seq = ESEQ_NONE;
    rl.escape_seq_buf[0] = 0;
    rl.hist_cur = -1;
    rl.cursor_pos = rl.orig_line_len;
    rl.prompt = prompt;
    mp_hal_stdout_tx_str(prompt);



}
