
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wAttributes; } ;
typedef int DWORD ;
typedef TYPE_1__ CONSOLE_SCREEN_BUFFER_INFO ;


 int ENABLE_PROCESSED_OUTPUT ;
 int ENABLE_WRAP_AT_EOL_OUTPUT ;
 int GetConsoleMode (int ,int*) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_1__*) ;
 int SetConsoleMode (int ,int) ;
 int hSTDERR ;
 int hSTDOUT ;
 int stdoutAttrs ;

void terminal_init(void)
{
    CONSOLE_SCREEN_BUFFER_INFO cinfo;
    DWORD cmode = 0;
    GetConsoleMode(hSTDOUT, &cmode);
    cmode |= (ENABLE_PROCESSED_OUTPUT | ENABLE_WRAP_AT_EOL_OUTPUT);
    SetConsoleMode(hSTDOUT, cmode);
    SetConsoleMode(hSTDERR, cmode);
    GetConsoleScreenBufferInfo(hSTDOUT, &cinfo);
    stdoutAttrs = cinfo.wAttributes;
}
