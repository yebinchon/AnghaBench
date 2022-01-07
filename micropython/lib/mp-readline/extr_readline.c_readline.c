
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;


 int mp_hal_stdin_rx_chr () ;
 int readline_init (int *,char const*) ;
 int readline_process_char (int) ;

int readline(vstr_t *line, const char *prompt) {
    readline_init(line, prompt);
    for (;;) {
        int c = mp_hal_stdin_rx_chr();
        int r = readline_process_char(c);
        if (r >= 0) {
            return r;
        }
    }
}
