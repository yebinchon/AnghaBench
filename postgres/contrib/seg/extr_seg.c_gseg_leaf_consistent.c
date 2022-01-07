
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
typedef int Datum ;


 int DirectFunctionCall2 (int ,int,int) ;
 int PG_RETURN_DATUM (int) ;
 int fprintf (int ,char*,int) ;
 int seg_contained ;
 int seg_contains ;
 int seg_left ;
 int seg_over_left ;
 int seg_over_right ;
 int seg_overlap ;
 int seg_right ;
 int seg_same ;
 int stderr ;

__attribute__((used)) static Datum
gseg_leaf_consistent(Datum key, Datum query, StrategyNumber strategy)
{
 Datum retval;





 switch (strategy)
 {
  case 135:
   retval = DirectFunctionCall2(seg_left, key, query);
   break;
  case 132:
   retval = DirectFunctionCall2(seg_over_left, key, query);
   break;
  case 130:
   retval = DirectFunctionCall2(seg_overlap, key, query);
   break;
  case 131:
   retval = DirectFunctionCall2(seg_over_right, key, query);
   break;
  case 129:
   retval = DirectFunctionCall2(seg_right, key, query);
   break;
  case 128:
   retval = DirectFunctionCall2(seg_same, key, query);
   break;
  case 136:
  case 133:
   retval = DirectFunctionCall2(seg_contains, key, query);
   break;
  case 137:
  case 134:
   retval = DirectFunctionCall2(seg_contained, key, query);
   break;
  default:
   retval = 0;
 }

 PG_RETURN_DATUM(retval);
}
