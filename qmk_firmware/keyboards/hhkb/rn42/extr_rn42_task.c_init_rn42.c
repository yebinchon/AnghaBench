
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_COMMAND (char*) ;
 int config_mode ;
 int enter_command_mode () ;
 int exit_command_mode () ;

__attribute__((used)) static void init_rn42(void)
{

    if (!config_mode) enter_command_mode();
    SEND_COMMAND("SF,1\r\n");
    SEND_COMMAND("S-,TmkBT\r\n");
    SEND_COMMAND("SS,Keyboard/Mouse\r\n");
    SEND_COMMAND("SM,4\r\n");
    SEND_COMMAND("SW,8000\r\n");
    SEND_COMMAND("S~,6\r\n");
    SEND_COMMAND("SH,003C\r\n");
    SEND_COMMAND("SY,FFF4\r\n");
    SEND_COMMAND("R,1\r\n");
    if (!config_mode) exit_command_mode();
}
