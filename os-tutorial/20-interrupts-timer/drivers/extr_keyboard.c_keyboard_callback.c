
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int registers_t ;


 int int_to_ascii (int ,char*) ;
 int kprint (char*) ;
 int port_byte_in (int) ;
 int print_letter (int ) ;

__attribute__((used)) static void keyboard_callback(registers_t regs) {

    u8 scancode = port_byte_in(0x60);
    char *sc_ascii;
    int_to_ascii(scancode, sc_ascii);
    kprint("Keyboard scancode: ");
    kprint(sc_ascii);
    kprint(", ");
    print_letter(scancode);
    kprint("\n");
}
