
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; scalar_t__ enable; } ;


 int ROWS_PER_HAND ;
 size_t SERIAL_LED_ADDR ;
 TYPE_1__ backlight_config ;
 scalar_t__ isLeftHand ;
 int * matrix ;
 int * serial_master_buffer ;
 int * serial_slave_buffer ;
 scalar_t__ serial_update_buffers () ;

int serial_transaction(void) {
    int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;

    if (serial_update_buffers()) {
        return 1;
    }

    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        matrix[slaveOffset+i] = serial_slave_buffer[i];
    }





    return 0;
}
