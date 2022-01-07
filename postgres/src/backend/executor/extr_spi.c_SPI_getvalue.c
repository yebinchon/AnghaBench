
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_9__ {int atttypid; } ;
struct TYPE_8__ {int atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int FirstLowInvalidHeapAttributeNumber ;
 char* OidOutputFunctionCall (int ,int ) ;
 scalar_t__ SPI_ERROR_NOATTRIBUTE ;
 scalar_t__ SPI_result ;
 TYPE_5__* SystemAttributeDefinition (int) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int heap_getattr (int ,int,TYPE_1__*,int*) ;

char *
SPI_getvalue(HeapTuple tuple, TupleDesc tupdesc, int fnumber)
{
 Datum val;
 bool isnull;
 Oid typoid,
    foutoid;
 bool typisvarlena;

 SPI_result = 0;

 if (fnumber > tupdesc->natts || fnumber == 0 ||
  fnumber <= FirstLowInvalidHeapAttributeNumber)
 {
  SPI_result = SPI_ERROR_NOATTRIBUTE;
  return ((void*)0);
 }

 val = heap_getattr(tuple, fnumber, tupdesc, &isnull);
 if (isnull)
  return ((void*)0);

 if (fnumber > 0)
  typoid = TupleDescAttr(tupdesc, fnumber - 1)->atttypid;
 else
  typoid = (SystemAttributeDefinition(fnumber))->atttypid;

 getTypeOutputInfo(typoid, &foutoid, &typisvarlena);

 return OidOutputFunctionCall(foutoid, val);
}
