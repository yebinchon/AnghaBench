
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int ENABLE_PROCESSED_INPUT ;
 int GetConsoleMode (int ,int *) ;
 int SetConsoleMode (int ,int ) ;
 int assure_stdin_handle () ;
 int orig_mode ;
 int std_in ;

void mp_hal_stdio_mode_raw(void) {
    assure_stdin_handle();
    GetConsoleMode(std_in, &orig_mode);
    DWORD mode = orig_mode;
    mode &= ~ENABLE_ECHO_INPUT;
    mode &= ~ENABLE_LINE_INPUT;
    mode &= ~ENABLE_PROCESSED_INPUT;
    SetConsoleMode(std_in, mode);
}
