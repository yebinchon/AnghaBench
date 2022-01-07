
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITE_ON_BLACK ;
 int get_cursor_offset () ;
 int get_offset_col (int) ;
 int get_offset_row (int) ;
 int print_char (int,int,int,int ) ;

void kprint_backspace() {
    int offset = get_cursor_offset()-2;
    int row = get_offset_row(offset);
    int col = get_offset_col(offset);
    print_char(0x08, col, row, WHITE_ON_BLACK);
}
