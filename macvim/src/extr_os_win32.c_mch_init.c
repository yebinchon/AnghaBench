
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_6__ {int wAttributes; } ;
struct TYPE_8__ {TYPE_1__ Info; } ;
struct TYPE_7__ {int wAttributes; } ;
typedef scalar_t__ PFNGCKLN ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 int GetConsoleCursorInfo (int ,int *) ;
 int GetConsoleMode (int ,int *) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetModuleHandle (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GetStdHandle (int ) ;
 int GetSystemMetrics (int ) ;
 int O_BINARY ;
 int SEM_FAILCRITICALERRORS ;
 int SET_INVALID_PARAM_HANDLER ;
 int SM_MOUSEPRESENT ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SaveConsoleBuffer (TYPE_3__*) ;
 int SaveConsoleTitleAndIcon () ;
 int SetConsoleIcon (int ,int ,int ) ;
 int SetErrorMode (int ) ;
 int TRUE ;
 int create_conin () ;
 int cterm_normal_bg_color ;
 int cterm_normal_fg_color ;
 int ctime (int *) ;
 scalar_t__ fdDump ;
 int fflush (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 int fputs (int ,scalar_t__) ;
 int g_attrCurrent ;
 int g_attrDefault ;
 TYPE_3__ g_cbOrig ;
 int g_cci ;
 int g_cmodein ;
 int g_cmodeout ;
 scalar_t__ g_fCanChangeIcon ;
 int g_fMouseAvail ;
 int g_fWindInitCalled ;
 int g_hConIn ;
 int g_hConOut ;
 int g_hVimIcon ;
 int g_hWnd ;
 int out_flush () ;
 scalar_t__ read_cmd_fd ;
 scalar_t__ s_pfnGetConsoleKeyboardLayoutName ;
 int time (int *) ;
 int ui_get_shellsize () ;
 int update_tcap (int) ;
 int win_clip_init () ;

void
mch_init(void)
{

    CONSOLE_SCREEN_BUFFER_INFO csbi;


    extern int _fmode;



    SET_INVALID_PARAM_HANDLER;



    SetErrorMode(SEM_FAILCRITICALERRORS);

    _fmode = O_BINARY;
    out_flush();


    if (read_cmd_fd == 0)
 g_hConIn = GetStdHandle(STD_INPUT_HANDLE);
    else
 create_conin();
    g_hConOut = GetStdHandle(STD_OUTPUT_HANDLE);







    GetConsoleScreenBufferInfo(g_hConOut, &csbi);
    g_attrCurrent = g_attrDefault = csbi.wAttributes;

    if (cterm_normal_fg_color == 0)
 cterm_normal_fg_color = (g_attrCurrent & 0xf) + 1;
    if (cterm_normal_bg_color == 0)
 cterm_normal_bg_color = ((g_attrCurrent >> 4) & 0xf) + 1;


    update_tcap(g_attrCurrent);

    GetConsoleCursorInfo(g_hConOut, &g_cci);
    GetConsoleMode(g_hConIn, &g_cmodein);
    GetConsoleMode(g_hConOut, &g_cmodeout);
    ui_get_shellsize();
    g_fWindInitCalled = TRUE;
    s_pfnGetConsoleKeyboardLayoutName =
 (PFNGCKLN) GetProcAddress(GetModuleHandle("kernel32.dll"),
      "GetConsoleKeyboardLayoutNameA");
}
