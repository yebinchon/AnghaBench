
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_PIN_MASK ;
 int SERIAL_PIN_PORT ;

__attribute__((used)) inline static void serial_low(void) { SERIAL_PIN_PORT &= ~SERIAL_PIN_MASK; }
