
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITE_ON_BLACK ;
 int get_cursor_offset () ;
 int get_offset (int,int) ;
 int get_offset_col (int) ;
 int get_offset_row (int) ;
 int print_char (char,int,int,int ) ;

void kprint_at(char *message, int col, int row) {

    int offset;
    if (col >= 0 && row >= 0)
        offset = get_offset(col, row);
    else {
        offset = get_cursor_offset();
        row = get_offset_row(offset);
        col = get_offset_col(offset);
    }


    int i = 0;
    while (message[i] != 0) {
        offset = print_char(message[i++], col, row, WHITE_ON_BLACK);

        row = get_offset_row(offset);
        col = get_offset_col(offset);
    }
}
