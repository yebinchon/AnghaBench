
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int send_command (int) ;

void set_page_address(uint8_t address) {
    address = (0xB0 | address);
    send_command(address);
}
