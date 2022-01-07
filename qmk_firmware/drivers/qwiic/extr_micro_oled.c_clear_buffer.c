
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCDWIDTH ;
 int memset (int ,int ,int) ;
 int micro_oled_screen_buffer ;

void clear_buffer(void) {

    memset(micro_oled_screen_buffer, 0, LCDWIDTH * LCDWIDTH / 8);
}
