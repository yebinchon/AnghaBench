
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;


 int MATRIX_COLS ;
 int MATRIX_ROWS ;
 int SEND_STRING (char*) ;
 int * arguments ;
 int *** keymaps ;
 char* newline ;
 size_t pgm_read_word (int *) ;
 int send_string (char*) ;
 int sprintf (char*,char*,size_t) ;
 scalar_t__ strlen (int ) ;
 size_t strtol (int ,char**,int) ;

void terminal_keymap(void) {
    if (strlen(arguments[1]) != 0) {
        uint16_t layer = strtol(arguments[1], (char **)((void*)0), 10);
        for (int r = 0; r < MATRIX_ROWS; r++) {
            for (int c = 0; c < MATRIX_COLS; c++) {
                uint16_t keycode = pgm_read_word(&keymaps[layer][r][c]);
                char keycode_s[8];
                sprintf(keycode_s, "0x%04x,", keycode);
                send_string(keycode_s);
            }
            send_string(newline);
        }
    } else {



    }
}
