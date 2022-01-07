
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int matrix_row_t ;
struct TYPE_4__ {scalar_t__ current_layer; scalar_t__ nlock_led; scalar_t__ clock_led; scalar_t__ slock_led; int backlight_level; } ;
struct TYPE_3__ {int * smatrix; } ;


 int ROWS_PER_HAND ;
 int backlight_set (int ) ;
 int led_toggle (int,scalar_t__) ;
 TYPE_2__ serial_m2s_buffer ;
 TYPE_1__ serial_s2m_buffer ;
 int set_layer_indicators (scalar_t__) ;
 scalar_t__ slave_clock_cache ;
 scalar_t__ slave_layer_cache ;
 scalar_t__ slave_nlock_cache ;
 scalar_t__ slave_slock_cache ;

void transport_slave(matrix_row_t matrix[]) {


  for (int i = 0; i < ROWS_PER_HAND; ++i)
  {
    serial_s2m_buffer.smatrix[i] = matrix[i];
  }







  if (slave_layer_cache != serial_m2s_buffer.current_layer) {
 slave_layer_cache = serial_m2s_buffer.current_layer;
 set_layer_indicators(slave_layer_cache);
  }

  if (slave_nlock_cache != serial_m2s_buffer.nlock_led) {
 slave_nlock_cache = serial_m2s_buffer.nlock_led;
 led_toggle(3, slave_nlock_cache);
  }
  if (slave_clock_cache != serial_m2s_buffer.clock_led) {
 slave_clock_cache = serial_m2s_buffer.clock_led;
 led_toggle(4, slave_clock_cache);
  }
  if (slave_slock_cache != serial_m2s_buffer.slock_led) {
 slave_slock_cache = serial_m2s_buffer.slock_led;
 led_toggle(5, slave_slock_cache);
  }

}
