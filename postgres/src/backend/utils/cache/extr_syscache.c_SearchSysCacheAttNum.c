
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_2__ {scalar_t__ attisdropped; } ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;


 int ATTNUM ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache2 (int ,int ,int ) ;

HeapTuple
SearchSysCacheAttNum(Oid relid, int16 attnum)
{
 HeapTuple tuple;

 tuple = SearchSysCache2(ATTNUM,
       ObjectIdGetDatum(relid),
       Int16GetDatum(attnum));
 if (!HeapTupleIsValid(tuple))
  return ((void*)0);
 if (((Form_pg_attribute) GETSTRUCT(tuple))->attisdropped)
 {
  ReleaseSysCache(tuple);
  return ((void*)0);
 }
 return tuple;
}
