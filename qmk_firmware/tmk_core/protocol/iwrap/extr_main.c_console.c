
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int console_command (int) ;
 int iwrap_buf_add (int) ;
 int iwrap_buf_del () ;
 int iwrap_buf_send () ;
 int print (char*) ;
 int uart_available () ;
 int uart_getchar () ;
 int uart_putchar (char) ;

__attribute__((used)) static bool console(void) {

    static bool breaked = 0;
    if (!uart_available())
        return 0;
    else {
        uint8_t c;
        c = uart_getchar();
        uart_putchar(c);
        switch (c) {
            case 0x00:
                if (!breaked) {
                    print("break(? for help): ");
                    breaked = 1;
                }
                break;
            case '\r':
                uart_putchar('\n');
                iwrap_buf_send();
                break;
            case '\b':
                iwrap_buf_del();
                break;
            default:
                if (breaked) {
                    print("\n");
                    console_command(c);
                    breaked = 0;
                } else {
                    iwrap_buf_add(c);
                }
                break;
        }
        return 1;
    }
}
