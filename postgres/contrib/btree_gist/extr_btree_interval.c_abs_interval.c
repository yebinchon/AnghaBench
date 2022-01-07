
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ Interval ;


 scalar_t__ DatumGetBool (int ) ;
 TYPE_1__* DatumGetIntervalP (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (TYPE_1__*) ;
 int interval_lt ;
 int interval_um ;

Interval *
abs_interval(Interval *a)
{
 static Interval zero = {0, 0, 0};

 if (DatumGetBool(DirectFunctionCall2(interval_lt,
           IntervalPGetDatum(a),
           IntervalPGetDatum(&zero))))
  a = DatumGetIntervalP(DirectFunctionCall1(interval_um,
              IntervalPGetDatum(a)));

 return a;
}
