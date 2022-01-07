
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int modes; int tick; int freq; } ;


 int ADJ_FREQUENCY ;
 int ADJ_TICK ;
 scalar_t__ adjtimex (struct timex*) ;
 int ksft_exit_fail () ;
 int perror (char*) ;
 int user_hz ;

__attribute__((used)) static void set_frequency(double freq)
{
 struct timex txc;
 int tick_offset;

 tick_offset = 1e6 * freq / user_hz;

 txc.modes = ADJ_TICK | ADJ_FREQUENCY;
 txc.tick = 1000000 / user_hz + tick_offset;
 txc.freq = (1e6 * freq - user_hz * tick_offset) * (1 << 16);

 if (adjtimex(&txc) < 0) {
  perror("[FAIL] adjtimex");
  ksft_exit_fail();
 }
}
