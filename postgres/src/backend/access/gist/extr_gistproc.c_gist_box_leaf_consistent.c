
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
typedef int BOX ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 int PointerGetDatum (int *) ;
 int box_above ;
 int box_below ;
 int box_contain ;
 int box_contained ;
 int box_left ;
 int box_overabove ;
 int box_overbelow ;
 int box_overlap ;
 int box_overleft ;
 int box_overright ;
 int box_right ;
 int box_same ;
 int elog (int ,char*,int) ;

__attribute__((used)) static bool
gist_box_leaf_consistent(BOX *key, BOX *query, StrategyNumber strategy)
{
 bool retval;

 switch (strategy)
 {
  case 137:
   retval = DatumGetBool(DirectFunctionCall2(box_left,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 132:
   retval = DatumGetBool(DirectFunctionCall2(box_overleft,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 130:
   retval = DatumGetBool(DirectFunctionCall2(box_overlap,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 131:
   retval = DatumGetBool(DirectFunctionCall2(box_overright,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 129:
   retval = DatumGetBool(DirectFunctionCall2(box_right,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 128:
   retval = DatumGetBool(DirectFunctionCall2(box_same,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 138:
  case 135:
   retval = DatumGetBool(DirectFunctionCall2(box_contain,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 139:
  case 136:
   retval = DatumGetBool(DirectFunctionCall2(box_contained,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 133:
   retval = DatumGetBool(DirectFunctionCall2(box_overbelow,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 140:
   retval = DatumGetBool(DirectFunctionCall2(box_below,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 141:
   retval = DatumGetBool(DirectFunctionCall2(box_above,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  case 134:
   retval = DatumGetBool(DirectFunctionCall2(box_overabove,
               PointerGetDatum(key),
               PointerGetDatum(query)));
   break;
  default:
   elog(ERROR, "unrecognized strategy number: %d", strategy);
   retval = 0;
   break;
 }
 return retval;
}
