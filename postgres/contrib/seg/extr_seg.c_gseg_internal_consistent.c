
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
typedef int Datum ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int PG_RETURN_BOOL (int) ;
 int fprintf (int ,char*,int) ;
 int seg_contains ;
 int seg_left ;
 int seg_over_left ;
 int seg_over_right ;
 int seg_overlap ;
 int seg_right ;
 int stderr ;

__attribute__((used)) static Datum
gseg_internal_consistent(Datum key, Datum query, StrategyNumber strategy)
{
 bool retval;





 switch (strategy)
 {
  case 135:
   retval =
    !DatumGetBool(DirectFunctionCall2(seg_over_right, key, query));
   break;
  case 132:
   retval =
    !DatumGetBool(DirectFunctionCall2(seg_right, key, query));
   break;
  case 130:
   retval =
    DatumGetBool(DirectFunctionCall2(seg_overlap, key, query));
   break;
  case 131:
   retval =
    !DatumGetBool(DirectFunctionCall2(seg_left, key, query));
   break;
  case 129:
   retval =
    !DatumGetBool(DirectFunctionCall2(seg_over_left, key, query));
   break;
  case 128:
  case 136:
  case 133:
   retval =
    DatumGetBool(DirectFunctionCall2(seg_contains, key, query));
   break;
  case 137:
  case 134:
   retval =
    DatumGetBool(DirectFunctionCall2(seg_overlap, key, query));
   break;
  default:
   retval = 0;
 }

 PG_RETURN_BOOL(retval);
}
