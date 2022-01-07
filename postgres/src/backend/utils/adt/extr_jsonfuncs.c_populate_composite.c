
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int domain_info; int base_typid; int record_io; int tupdesc; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int JsValue ;
typedef int JsObject ;
typedef int HeapTupleHeader ;
typedef scalar_t__ Datum ;
typedef TYPE_1__ CompositeIOData ;


 scalar_t__ HeapTupleHeaderGetDatum (int ) ;
 int JsObjectFree (int *) ;
 int JsValueToJsObject (int *,int *) ;
 int RECORDOID ;
 int domain_check (scalar_t__,int,int ,int *,int ) ;
 int populate_record (int ,int *,int ,int ,int *) ;
 int update_cached_tupdesc (TYPE_1__*,int ) ;

__attribute__((used)) static Datum
populate_composite(CompositeIOData *io,
       Oid typid,
       const char *colname,
       MemoryContext mcxt,
       HeapTupleHeader defaultval,
       JsValue *jsv,
       bool isnull)
{
 Datum result;


 update_cached_tupdesc(io, mcxt);

 if (isnull)
  result = (Datum) 0;
 else
 {
  HeapTupleHeader tuple;
  JsObject jso;


  JsValueToJsObject(jsv, &jso);


  tuple = populate_record(io->tupdesc, &io->record_io,
        defaultval, mcxt, &jso);
  result = HeapTupleHeaderGetDatum(tuple);

  JsObjectFree(&jso);
 }






 if (typid != io->base_typid && typid != RECORDOID)
  domain_check(result, isnull, typid, &io->domain_info, mcxt);

 return result;
}
