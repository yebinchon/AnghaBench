
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int PG_DETOAST_DATUM (int ) ;
 int PG_GETARG_DATUM (int ) ;
 scalar_t__ PG_GETARG_POINTER (int) ;
 int PG_RETURN_POINTER (int *) ;
 int PointerGetDatum (int ) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static Datum
gin_btree_extract_value(FunctionCallInfo fcinfo, bool is_varlena)
{
 Datum datum = PG_GETARG_DATUM(0);
 int32 *nentries = (int32 *) PG_GETARG_POINTER(1);
 Datum *entries = (Datum *) palloc(sizeof(Datum));

 if (is_varlena)
  datum = PointerGetDatum(PG_DETOAST_DATUM(datum));
 entries[0] = datum;
 *nentries = 1;

 PG_RETURN_POINTER(entries);
}
