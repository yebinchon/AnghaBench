
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;


 int SEND_STRING (char*) ;
 int * arguments ;
 int itoa (size_t,char*,int) ;
 int *** keymaps ;
 size_t pgm_read_word (int *) ;
 int send_string (char*) ;
 scalar_t__ strlen (int ) ;
 size_t strtol (int ,char**,int) ;

void terminal_keycode(void) {
    if (strlen(arguments[1]) != 0 && strlen(arguments[2]) != 0 && strlen(arguments[3]) != 0) {
        char keycode_dec[5];
        char keycode_hex[5];
        uint16_t layer = strtol(arguments[1], (char **)((void*)0), 10);
        uint16_t row = strtol(arguments[2], (char **)((void*)0), 10);
        uint16_t col = strtol(arguments[3], (char **)((void*)0), 10);
        uint16_t keycode = pgm_read_word(&keymaps[layer][row][col]);
        itoa(keycode, keycode_dec, 10);
        itoa(keycode, keycode_hex, 16);
        SEND_STRING("0x");
        send_string(keycode_hex);
        SEND_STRING(" (");
        send_string(keycode_dec);
        SEND_STRING(")\n");
    } else {



    }
}
