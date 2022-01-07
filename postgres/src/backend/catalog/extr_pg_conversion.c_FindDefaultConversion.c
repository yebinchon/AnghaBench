
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {int conproc; scalar_t__ condefault; } ;
struct TYPE_6__ {int tuple; } ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_conversion ;
typedef TYPE_3__ CatCList ;


 int CONDEFAULT ;
 scalar_t__ GETSTRUCT (int *) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList3 (int ,int ,int ,int ) ;

Oid
FindDefaultConversion(Oid name_space, int32 for_encoding, int32 to_encoding)
{
 CatCList *catlist;
 HeapTuple tuple;
 Form_pg_conversion body;
 Oid proc = InvalidOid;
 int i;

 catlist = SearchSysCacheList3(CONDEFAULT,
          ObjectIdGetDatum(name_space),
          Int32GetDatum(for_encoding),
          Int32GetDatum(to_encoding));

 for (i = 0; i < catlist->n_members; i++)
 {
  tuple = &catlist->members[i]->tuple;
  body = (Form_pg_conversion) GETSTRUCT(tuple);
  if (body->condefault)
  {
   proc = body->conproc;
   break;
  }
 }
 ReleaseSysCacheList(catlist);
 return proc;
}
