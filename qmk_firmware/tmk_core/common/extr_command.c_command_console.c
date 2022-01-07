
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 int MOUSEKEY ;
 int ONESHOT ;
 int command_console_help () ;
 int command_state ;
 int mousekey_console_help () ;
 int print (char*) ;

__attribute__((used)) static bool command_console(uint8_t code) {
    switch (code) {
        case 131:
        case 128:
            command_console_help();
            break;
        case 129:
        case 132:
            command_state = ONESHOT;
            return 0;







        default:
            print("?");
            return 0;
    }
    print("C> ");
    return 1;
}
