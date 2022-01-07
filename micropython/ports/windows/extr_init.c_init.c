
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetConsoleCtrlHandler (int ,int ) ;
 int TRUE ;
 int _CRTDBG_MODE_DEBUG ;
 int _CRT_ASSERT ;
 int _CRT_ERROR ;
 int _CRT_WARN ;
 int _CrtSetReportMode (int ,int ) ;
 int _TWO_DIGIT_EXPONENT ;
 int _set_invalid_parameter_handler (int ) ;
 int _set_output_format (int ) ;
 int console_sighandler ;
 int init_sleep () ;
 int invalid_param_handler ;
 int putenv (char*) ;
 int set_fmode_binary () ;

void init() {
    SetConsoleCtrlHandler(console_sighandler, TRUE);
    init_sleep();





    _set_output_format(_TWO_DIGIT_EXPONENT);

    set_fmode_binary();
}
