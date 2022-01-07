
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SEND_COMMAND (char*) ;
 int clear_keyboard () ;
 int host_get_driver () ;
 int host_set_driver (int *) ;
 int prev_driver ;
 int print (char*) ;
 int rn42_config_driver ;
 int rn42_disconnect () ;
 scalar_t__ rn42_linked () ;
 int rn42_print_response () ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int wait_ms (int) ;

__attribute__((used)) static void enter_command_mode(void)
{
    prev_driver = host_get_driver();
    clear_keyboard();
    host_set_driver(&rn42_config_driver);
    rn42_disconnect();
    while (rn42_linked()) ;

    print("Entering config mode ...\n");
    wait_ms(1100);
    SEND_COMMAND("$$$");
    wait_ms(600);
    rn42_print_response();
    const char *s = SEND_COMMAND("v\r\n");
    if (strncmp("v", s, 1) != 0) SEND_COMMAND("+\r\n");
}
