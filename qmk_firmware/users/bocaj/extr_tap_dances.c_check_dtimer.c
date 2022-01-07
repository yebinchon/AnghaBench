
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int* diablo_key_time ;
 int * diablo_timer ;
 int timer_elapsed (int ) ;

bool check_dtimer(uint8_t dtimer) { return (timer_elapsed(diablo_timer[dtimer]) < (diablo_key_time[dtimer] * 1000)) ? 0 : 1; }
