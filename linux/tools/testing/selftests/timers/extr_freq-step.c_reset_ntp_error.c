
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct timex {TYPE_1__ time; int modes; } ;


 int ADJ_SETOFFSET ;
 scalar_t__ adjtimex (struct timex*) ;
 int ksft_exit_fail () ;
 int perror (char*) ;

__attribute__((used)) static void reset_ntp_error(void)
{
 struct timex txc;

 txc.modes = ADJ_SETOFFSET;
 txc.time.tv_sec = 0;
 txc.time.tv_usec = 0;

 if (adjtimex(&txc) < 0) {
  perror("[FAIL] adjtimex");
  ksft_exit_fail();
 }
}
