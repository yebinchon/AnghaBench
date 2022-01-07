
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int input_count; void* buf; } ;
struct TYPE_5__ {TYPE_2__* ssup_extra; } ;
typedef TYPE_1__* SortSupport ;
typedef scalar_t__ Size ;
typedef scalar_t__ Pointer ;
typedef int NumericVar ;
typedef TYPE_2__ NumericSortSupport ;
typedef scalar_t__ Numeric ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int NUMERIC_ABBREV_NAN ;
 scalar_t__ NUMERIC_IS_NAN (scalar_t__) ;
 void* PG_DETOAST_DATUM_PACKED (int ) ;
 int SET_VARSIZE (void*,scalar_t__) ;
 scalar_t__ VARATT_IS_SHORT (void*) ;
 scalar_t__ VARATT_SHORT_MAX ;
 int VARDATA (void*) ;
 int VARDATA_SHORT (void*) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARHDRSZ_SHORT ;
 scalar_t__ VARSIZE_SHORT (void*) ;
 int init_var_from_num (scalar_t__,int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int numeric_abbrev_convert_var (int *,TYPE_2__*) ;
 int pfree (void*) ;

__attribute__((used)) static Datum
numeric_abbrev_convert(Datum original_datum, SortSupport ssup)
{
 NumericSortSupport *nss = ssup->ssup_extra;
 void *original_varatt = PG_DETOAST_DATUM_PACKED(original_datum);
 Numeric value;
 Datum result;

 nss->input_count += 1;





 if (VARATT_IS_SHORT(original_varatt))
 {
  void *buf = nss->buf;
  Size sz = VARSIZE_SHORT(original_varatt) - VARHDRSZ_SHORT;

  Assert(sz <= VARATT_SHORT_MAX - VARHDRSZ_SHORT);

  SET_VARSIZE(buf, VARHDRSZ + sz);
  memcpy(VARDATA(buf), VARDATA_SHORT(original_varatt), sz);

  value = (Numeric) buf;
 }
 else
  value = (Numeric) original_varatt;

 if (NUMERIC_IS_NAN(value))
 {
  result = NUMERIC_ABBREV_NAN;
 }
 else
 {
  NumericVar var;

  init_var_from_num(value, &var);

  result = numeric_abbrev_convert_var(&var, nss);
 }


 if ((Pointer) original_varatt != DatumGetPointer(original_datum))
  pfree(original_varatt);

 return result;
}
