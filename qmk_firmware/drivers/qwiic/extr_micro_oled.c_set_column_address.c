
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LCDWIDTH ;
 int send_command (int) ;

void set_column_address(uint8_t address) {
    send_command((0x10 | (address >> 4)) + ((128 - LCDWIDTH) >> 8));
    send_command(0x0F & address);
}
