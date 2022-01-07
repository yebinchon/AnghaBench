
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* prompt; int orig_line_len; int cursor_pos; TYPE_1__* line; } ;
struct TYPE_3__ {int len; } ;


 int mp_hal_stdout_tx_str (char const*) ;
 int readline_auto_indent () ;
 TYPE_2__ rl ;

void readline_note_newline(const char *prompt) {
    rl.orig_line_len = rl.line->len;
    rl.cursor_pos = rl.orig_line_len;
    rl.prompt = prompt;
    mp_hal_stdout_tx_str(prompt);



}
