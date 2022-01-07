
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_2__ {scalar_t__ stawidth; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_statistic ;
typedef int AttrNumber ;


 int BoolGetDatum (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int STATRELATTINH ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 scalar_t__ get_attavgwidth_hook (int ,int ) ;
 scalar_t__ stub1 (int ,int ) ;

int32
get_attavgwidth(Oid relid, AttrNumber attnum)
{
 HeapTuple tp;
 int32 stawidth;

 if (get_attavgwidth_hook)
 {
  stawidth = (*get_attavgwidth_hook) (relid, attnum);
  if (stawidth > 0)
   return stawidth;
 }
 tp = SearchSysCache3(STATRELATTINH,
       ObjectIdGetDatum(relid),
       Int16GetDatum(attnum),
       BoolGetDatum(0));
 if (HeapTupleIsValid(tp))
 {
  stawidth = ((Form_pg_statistic) GETSTRUCT(tp))->stawidth;
  ReleaseSysCache(tp);
  if (stawidth > 0)
   return stawidth;
 }
 return 0;
}
