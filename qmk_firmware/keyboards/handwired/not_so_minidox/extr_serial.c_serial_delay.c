
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_DELAY ;
 int _delay_us (int ) ;

__attribute__((used)) inline static
void serial_delay(void) {
  _delay_us(SERIAL_DELAY);
}
