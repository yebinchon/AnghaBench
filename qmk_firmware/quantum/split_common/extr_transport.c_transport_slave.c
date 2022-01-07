
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int matrix_row_t ;
struct TYPE_4__ {int backlight_level; } ;
struct TYPE_3__ {scalar_t__ encoder_state; int * smatrix; } ;


 int ROWS_PER_HAND ;
 int backlight_set (int ) ;
 int encoder_state_raw (int *) ;
 TYPE_2__ serial_m2s_buffer ;
 TYPE_1__ serial_s2m_buffer ;
 int transport_rgblight_slave () ;

void transport_slave(matrix_row_t matrix[]) {
    transport_rgblight_slave();

    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        serial_s2m_buffer.smatrix[i] = matrix[i];
    }







}
