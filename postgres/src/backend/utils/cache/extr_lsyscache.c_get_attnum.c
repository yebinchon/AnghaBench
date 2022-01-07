
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attnum; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AttrNumber ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidAttrNumber ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,char const*) ;

AttrNumber
get_attnum(Oid relid, const char *attname)
{
 HeapTuple tp;

 tp = SearchSysCacheAttName(relid, attname);
 if (HeapTupleIsValid(tp))
 {
  Form_pg_attribute att_tup = (Form_pg_attribute) GETSTRUCT(tp);
  AttrNumber result;

  result = att_tup->attnum;
  ReleaseSysCache(tp);
  return result;
 }
 else
  return InvalidAttrNumber;
}
