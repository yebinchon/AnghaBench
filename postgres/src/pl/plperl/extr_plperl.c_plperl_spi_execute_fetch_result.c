
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int UV ;
struct TYPE_4__ {int tupdesc; int * vals; } ;
typedef int SV ;
typedef TYPE_1__ SPITupleTable ;
typedef int NV ;
typedef int HV ;
typedef int AV ;


 scalar_t__ AV_SIZE_MAX ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int SPI_freetuptable (TYPE_1__*) ;
 int SPI_result_code_string (int) ;
 scalar_t__ UV_MAX ;
 int av_extend (int *,scalar_t__) ;
 int av_push (int *,int *) ;
 int check_spi_usage_allowed () ;
 int cstr2sv (int ) ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hv_store_string (int *,char*,int ) ;
 int * newAV () ;
 int * newHV () ;
 int newRV_noinc (int *) ;
 int newSVnv (int ) ;
 int newSVuv (int ) ;
 int * plperl_hash_from_tuple (int ,int ,int) ;

__attribute__((used)) static HV *
plperl_spi_execute_fetch_result(SPITupleTable *tuptable, uint64 processed,
        int status)
{
 dTHX;
 HV *result;

 check_spi_usage_allowed();

 result = newHV();

 hv_store_string(result, "status",
     cstr2sv(SPI_result_code_string(status)));
 hv_store_string(result, "processed",
     (processed > (uint64) UV_MAX) ?
     newSVnv((NV) processed) :
     newSVuv((UV) processed));

 if (status > 0 && tuptable)
 {
  AV *rows;
  SV *row;
  uint64 i;


  if (processed > (uint64) AV_SIZE_MAX)
   ereport(ERROR,
     (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
      errmsg("query result has too many rows to fit in a Perl array")));

  rows = newAV();
  av_extend(rows, processed);
  for (i = 0; i < processed; i++)
  {
   row = plperl_hash_from_tuple(tuptable->vals[i], tuptable->tupdesc, 1);
   av_push(rows, row);
  }
  hv_store_string(result, "rows",
      newRV_noinc((SV *) rows));
 }

 SPI_freetuptable(tuptable);

 return result;
}
