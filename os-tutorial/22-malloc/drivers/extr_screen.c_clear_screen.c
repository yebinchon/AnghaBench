
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int MAX_COLS ;
 int MAX_ROWS ;
 scalar_t__ VIDEO_ADDRESS ;
 char WHITE_ON_BLACK ;
 int get_offset (int ,int ) ;
 int set_cursor_offset (int ) ;

void clear_screen() {
    int screen_size = MAX_COLS * MAX_ROWS;
    int i;
    u8 *screen = (u8*) VIDEO_ADDRESS;

    for (i = 0; i < screen_size; i++) {
        screen[i*2] = ' ';
        screen[i*2+1] = WHITE_ON_BLACK;
    }
    set_cursor_offset(get_offset(0, 0));
}
