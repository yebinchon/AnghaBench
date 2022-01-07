
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int flinfo; } ;
struct TYPE_4__ {int strategy; int datum; int typecmp; } ;
typedef TYPE_1__ QueryInfo ;
typedef TYPE_2__* FunctionCallInfo ;
typedef int Datum ;







 int CallerFInfoFunctionCall2 (int ,int ,int ,int ,int ) ;
 int DatumGetInt32 (int ) ;
 int ERROR ;
 int PG_GETARG_DATUM (int) ;
 scalar_t__ PG_GETARG_POINTER (int) ;
 int PG_GET_COLLATION () ;
 int PG_RETURN_INT32 (int) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static Datum
gin_btree_compare_prefix(FunctionCallInfo fcinfo)
{
 Datum a = PG_GETARG_DATUM(0);
 Datum b = PG_GETARG_DATUM(1);
 QueryInfo *data = (QueryInfo *) PG_GETARG_POINTER(3);
 int32 res,
    cmp;

 cmp = DatumGetInt32(CallerFInfoFunctionCall2(
             data->typecmp,
             fcinfo->flinfo,
             PG_GET_COLLATION(),
             (data->strategy == 128 ||
              data->strategy == 129)
             ? data->datum : a,
             b));

 switch (data->strategy)
 {
  case 128:

   if (cmp > 0)
    res = 0;
   else
    res = 1;
   break;
  case 129:

   if (cmp >= 0)
    res = 0;
   else
    res = 1;
   break;
  case 132:
   if (cmp != 0)
    res = 1;
   else
    res = 0;
   break;
  case 131:

   if (cmp <= 0)
    res = 0;
   else
    res = 1;
   break;
  case 130:


   if (cmp < 0)
    res = 0;
   else if (cmp == 0)
    res = -1;
   else
    res = 1;
   break;
  default:
   elog(ERROR, "unrecognized strategy number: %d",
     data->strategy);
   res = 0;
 }

 PG_RETURN_INT32(res);
}
