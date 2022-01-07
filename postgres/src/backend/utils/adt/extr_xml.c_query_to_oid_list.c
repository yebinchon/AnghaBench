
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64 ;
struct TYPE_2__ {int tupdesc; int * vals; } ;
typedef int List ;
typedef int Datum ;


 int DatumGetObjectId (int ) ;
 int ERROR ;
 int * NIL ;
 int SPI_OK_SELECT ;
 int SPI_execute (char const*,int,int ) ;
 int SPI_getbinval (int ,int ,int,int*) ;
 size_t SPI_processed ;
 int SPI_result_code_string (int) ;
 TYPE_1__* SPI_tuptable ;
 int elog (int ,char*,int ,char const*) ;
 int * lappend_oid (int *,int ) ;

__attribute__((used)) static List *
query_to_oid_list(const char *query)
{
 uint64 i;
 List *list = NIL;
 int spi_result;

 spi_result = SPI_execute(query, 1, 0);
 if (spi_result != SPI_OK_SELECT)
  elog(ERROR, "SPI_execute returned %s for %s",
    SPI_result_code_string(spi_result), query);

 for (i = 0; i < SPI_processed; i++)
 {
  Datum oid;
  bool isnull;

  oid = SPI_getbinval(SPI_tuptable->vals[i],
       SPI_tuptable->tupdesc,
       1,
       &isnull);
  if (!isnull)
   list = lappend_oid(list, DatumGetObjectId(oid));
 }

 return list;
}
