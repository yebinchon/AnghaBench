
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_3__ {int attlen; int attbyval; } ;
typedef int Relation ;
typedef int IndexTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int Datum ;


 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int RelationGetDescr (int ) ;
 TYPE_1__* TupleDescAttr (int ,int) ;
 int datum_image_eq (int ,int ,int ,int ) ;
 int index_getattr (int ,int,int ,int*) ;

int
_bt_keep_natts_fast(Relation rel, IndexTuple lastleft, IndexTuple firstright)
{
 TupleDesc itupdesc = RelationGetDescr(rel);
 int keysz = IndexRelationGetNumberOfKeyAttributes(rel);
 int keepnatts;

 keepnatts = 1;
 for (int attnum = 1; attnum <= keysz; attnum++)
 {
  Datum datum1,
     datum2;
  bool isNull1,
     isNull2;
  Form_pg_attribute att;

  datum1 = index_getattr(lastleft, attnum, itupdesc, &isNull1);
  datum2 = index_getattr(firstright, attnum, itupdesc, &isNull2);
  att = TupleDescAttr(itupdesc, attnum - 1);

  if (isNull1 != isNull2)
   break;

  if (!isNull1 &&
   !datum_image_eq(datum1, datum2, att->attbyval, att->attlen))
   break;

  keepnatts++;
 }

 return keepnatts;
}
