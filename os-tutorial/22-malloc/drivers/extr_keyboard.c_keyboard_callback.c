
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int registers_t ;


 scalar_t__ BACKSPACE ;
 scalar_t__ ENTER ;
 scalar_t__ SC_MAX ;
 int UNUSED (int ) ;
 int append (char*,char) ;
 int backspace (char*) ;
 char* key_buffer ;
 int kprint (char*) ;
 int kprint_backspace () ;
 scalar_t__ port_byte_in (int) ;
 char* sc_ascii ;
 int user_input (char*) ;

__attribute__((used)) static void keyboard_callback(registers_t regs) {

    u8 scancode = port_byte_in(0x60);

    if (scancode > SC_MAX) return;
    if (scancode == BACKSPACE) {
        backspace(key_buffer);
        kprint_backspace();
    } else if (scancode == ENTER) {
        kprint("\n");
        user_input(key_buffer);
        key_buffer[0] = '\0';
    } else {
        char letter = sc_ascii[(int)scancode];

        char str[2] = {letter, '\0'};
        append(key_buffer, letter);
        kprint(str);
    }
    UNUSED(regs);
}
