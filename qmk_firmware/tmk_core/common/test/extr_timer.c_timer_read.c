
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int current_time ;

uint16_t timer_read(void) { return current_time & 0xFFFF; }
