
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NOP ;
 int OLED_BLOCK_SIZE ;
 int OLED_COLUMN_OFFSET ;
 int OLED_DISPLAY_WIDTH ;
 int PAM_PAGE_ADDR ;
 int PAM_SETCOLUMN_LSB ;
 int PAM_SETCOLUMN_MSB ;

__attribute__((used)) static void calc_bounds(uint8_t update_start, uint8_t *cmd_array) {

    uint8_t start_page = OLED_BLOCK_SIZE * update_start / OLED_DISPLAY_WIDTH;
    uint8_t start_column = OLED_BLOCK_SIZE * update_start % OLED_DISPLAY_WIDTH;



    cmd_array[0] = PAM_PAGE_ADDR | start_page;
    cmd_array[1] = PAM_SETCOLUMN_LSB | ((OLED_COLUMN_OFFSET + start_column) & 0x0f);
    cmd_array[2] = PAM_SETCOLUMN_MSB | ((OLED_COLUMN_OFFSET + start_column) >> 4 & 0x0f);
    cmd_array[3] = NOP;
    cmd_array[4] = NOP;
    cmd_array[5] = NOP;







}
