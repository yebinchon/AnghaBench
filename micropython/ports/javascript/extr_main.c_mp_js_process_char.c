
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pyexec_event_repl_process_char (int) ;

int mp_js_process_char(int c) {
    return pyexec_event_repl_process_char(c);
}
