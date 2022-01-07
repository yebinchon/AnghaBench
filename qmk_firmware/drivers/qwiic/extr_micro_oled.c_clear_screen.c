
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_data (int ) ;
 int set_column_address (int ) ;
 int set_page_address (int) ;

void clear_screen(void) {
    for (int i = 0; i < 8; i++) {
        set_page_address(i);
        set_column_address(0);
        for (int j = 0; j < 0x80; j++) {
            send_data(0);
        }
    }
}
