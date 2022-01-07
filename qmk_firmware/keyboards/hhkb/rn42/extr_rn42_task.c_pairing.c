
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_COMMAND (char*) ;
 int enter_command_mode () ;
 int exit_command_mode () ;

__attribute__((used)) static void pairing(void)
{
    enter_command_mode();
    SEND_COMMAND("SR,Z\r\n");
    SEND_COMMAND("R,1\r\n");
    exit_command_mode();
}
