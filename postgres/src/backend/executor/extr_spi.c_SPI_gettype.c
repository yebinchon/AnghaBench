
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_10__ {int atttypid; } ;
struct TYPE_9__ {int atttypid; } ;
struct TYPE_8__ {int typname; } ;
struct TYPE_7__ {int natts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_type ;


 int FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 scalar_t__ SPI_ERROR_NOATTRIBUTE ;
 scalar_t__ SPI_ERROR_TYPUNKNOWN ;
 scalar_t__ SPI_result ;
 int SearchSysCache1 (int ,int ) ;
 TYPE_5__* SystemAttributeDefinition (int) ;
 int TYPEOID ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 char* pstrdup (int ) ;

char *
SPI_gettype(TupleDesc tupdesc, int fnumber)
{
 Oid typoid;
 HeapTuple typeTuple;
 char *result;

 SPI_result = 0;

 if (fnumber > tupdesc->natts || fnumber == 0 ||
  fnumber <= FirstLowInvalidHeapAttributeNumber)
 {
  SPI_result = SPI_ERROR_NOATTRIBUTE;
  return ((void*)0);
 }

 if (fnumber > 0)
  typoid = TupleDescAttr(tupdesc, fnumber - 1)->atttypid;
 else
  typoid = (SystemAttributeDefinition(fnumber))->atttypid;

 typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typoid));

 if (!HeapTupleIsValid(typeTuple))
 {
  SPI_result = SPI_ERROR_TYPUNKNOWN;
  return ((void*)0);
 }

 result = pstrdup(NameStr(((Form_pg_type) GETSTRUCT(typeTuple))->typname));
 ReleaseSysCache(typeTuple);
 return result;
}
