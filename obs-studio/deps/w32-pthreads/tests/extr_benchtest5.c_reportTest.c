
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetDurationMilliSecs (int ,int ) ;
 float ITERATIONS ;
 int currSysTimeStart ;
 int currSysTimeStop ;
 scalar_t__ durationMilliSecs ;
 scalar_t__ overHeadMilliSecs ;
 int printf (char*,char*,scalar_t__,float) ;

void
reportTest (char * testNameString)
{
  durationMilliSecs = GetDurationMilliSecs(currSysTimeStart, currSysTimeStop) - overHeadMilliSecs;

  printf( "%-45s %15ld %15.3f\n",
     testNameString,
          durationMilliSecs,
          (float) durationMilliSecs * 1E3 / ITERATIONS);
}
