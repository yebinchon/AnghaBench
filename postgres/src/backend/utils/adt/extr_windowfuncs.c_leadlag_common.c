
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
typedef int WindowObject ;
struct TYPE_3__ {int flinfo; } ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int PG_RETURN_DATUM (int ) ;
 int PG_RETURN_NULL () ;
 int PG_WINDOW_OBJECT () ;
 int WINDOW_SEEK_CURRENT ;
 int WinGetFuncArgCurrent (int ,int,int*) ;
 int WinGetFuncArgInPartition (int ,int ,int,int ,int,int*,int*) ;
 int get_fn_expr_arg_stable (int ,int) ;

__attribute__((used)) static Datum
leadlag_common(FunctionCallInfo fcinfo,
      bool forward, bool withoffset, bool withdefault)
{
 WindowObject winobj = PG_WINDOW_OBJECT();
 int32 offset;
 bool const_offset;
 Datum result;
 bool isnull;
 bool isout;

 if (withoffset)
 {
  offset = DatumGetInt32(WinGetFuncArgCurrent(winobj, 1, &isnull));
  if (isnull)
   PG_RETURN_NULL();
  const_offset = get_fn_expr_arg_stable(fcinfo->flinfo, 1);
 }
 else
 {
  offset = 1;
  const_offset = 1;
 }

 result = WinGetFuncArgInPartition(winobj, 0,
           (forward ? offset : -offset),
           WINDOW_SEEK_CURRENT,
           const_offset,
           &isnull, &isout);

 if (isout)
 {




  if (withdefault)
   result = WinGetFuncArgCurrent(winobj, 2, &isnull);
 }

 if (isnull)
  PG_RETURN_NULL();

 PG_RETURN_DATUM(result);
}
