
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int int64 ;
typedef int int32 ;
typedef int instr_time ;


 int INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int INT64CONST (int) ;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int * histogram ;
 int printf (char*,int) ;
 int stderr ;

__attribute__((used)) static uint64
test_timing(int32 duration)
{
 uint64 total_time;
 int64 time_elapsed = 0;
 uint64 loop_count = 0;
 uint64 prev,
    cur;
 instr_time start_time,
    end_time,
    temp;

 total_time = duration > 0 ? duration * INT64CONST(1000000) : 0;

 INSTR_TIME_SET_CURRENT(start_time);
 cur = INSTR_TIME_GET_MICROSEC(start_time);

 while (time_elapsed < total_time)
 {
  int32 diff,
     bits = 0;

  prev = cur;
  INSTR_TIME_SET_CURRENT(temp);
  cur = INSTR_TIME_GET_MICROSEC(temp);
  diff = cur - prev;


  if (diff < 0)
  {
   fprintf(stderr, _("Detected clock going backwards in time.\n"));
   fprintf(stderr, _("Time warp: %d ms\n"), diff);
   exit(1);
  }


  while (diff)
  {
   diff >>= 1;
   bits++;
  }


  histogram[bits]++;

  loop_count++;
  INSTR_TIME_SUBTRACT(temp, start_time);
  time_elapsed = INSTR_TIME_GET_MICROSEC(temp);
 }

 INSTR_TIME_SET_CURRENT(end_time);

 INSTR_TIME_SUBTRACT(end_time, start_time);

 printf(_("Per loop time including overhead: %0.2f ns\n"),
     INSTR_TIME_GET_DOUBLE(end_time) * 1e9 / loop_count);

 return loop_count;
}
