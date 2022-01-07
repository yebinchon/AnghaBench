
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain_info; int base_typmod; int base_typid; int base_io; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int JsValue ;
typedef TYPE_1__ DomainIOData ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 int PointerGetDatum (int *) ;
 int domain_check (scalar_t__,int,int ,int *,int ) ;
 scalar_t__ populate_record_field (int ,int ,int ,char const*,int ,int ,int *,int*) ;

__attribute__((used)) static Datum
populate_domain(DomainIOData *io,
    Oid typid,
    const char *colname,
    MemoryContext mcxt,
    JsValue *jsv,
    bool isnull)
{
 Datum res;

 if (isnull)
  res = (Datum) 0;
 else
 {
  res = populate_record_field(io->base_io,
         io->base_typid, io->base_typmod,
         colname, mcxt, PointerGetDatum(((void*)0)),
         jsv, &isnull);
  Assert(!isnull);
 }

 domain_check(res, isnull, typid, &io->domain_info, mcxt);

 return res;
}
