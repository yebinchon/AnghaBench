
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_COMMAND (char*) ;
 int clear_keyboard () ;
 int host_set_driver (int ) ;
 int prev_driver ;
 int print (char*) ;
 int rn42_autoconnect () ;

__attribute__((used)) static void exit_command_mode(void)
{
    print("Exiting config mode ...\n");
    SEND_COMMAND("---\r\n");

    rn42_autoconnect();
    clear_keyboard();
    host_set_driver(prev_driver);
}
