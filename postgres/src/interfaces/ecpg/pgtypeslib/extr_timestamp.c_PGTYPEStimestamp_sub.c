
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ timestamp ;
struct TYPE_3__ {scalar_t__ month; scalar_t__ time; } ;
typedef TYPE_1__ interval ;


 int PGTYPES_TS_ERR_EINFTIME ;
 scalar_t__ TIMESTAMP_NOT_FINITE (scalar_t__) ;

int
PGTYPEStimestamp_sub(timestamp * ts1, timestamp * ts2, interval * iv)
{
 if (TIMESTAMP_NOT_FINITE(*ts1) || TIMESTAMP_NOT_FINITE(*ts2))
  return PGTYPES_TS_ERR_EINFTIME;
 else
  iv->time = (*ts1 - *ts2);

 iv->month = 0;

 return 0;
}
