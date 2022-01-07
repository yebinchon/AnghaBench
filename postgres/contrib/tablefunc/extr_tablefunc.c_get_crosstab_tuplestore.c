
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_9__ {int attidx; } ;
typedef TYPE_1__ crosstab_cat_desc ;
typedef int Tuplestorestate ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {int * vals; TYPE_2__* tupdesc; } ;
struct TYPE_10__ {int natts; } ;
typedef TYPE_3__ SPITupleTable ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int HTAB ;
typedef int AttInMetadata ;


 int BuildTupleFromCStrings (int *,char**) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int SPI_execute (char*,int,int ) ;
 scalar_t__ SPI_finish () ;
 char* SPI_getvalue (int ,TYPE_2__*,int) ;
 scalar_t__ SPI_processed ;
 TYPE_3__* SPI_tuptable ;
 int * TupleDescGetAttInMetadata (TYPE_2__*) ;
 int crosstab_HashTableLookup (int *,char*,TYPE_1__*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*) ;
 int hash_get_num_entries (int *) ;
 scalar_t__ palloc0 (int) ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_donestoring (int *) ;
 int tuplestore_puttuple (int *,int ) ;
 int work_mem ;
 int xpfree (char*) ;
 int xpstrdup (char*,char*) ;
 int xstreq (char*,char*) ;

__attribute__((used)) static Tuplestorestate *
get_crosstab_tuplestore(char *sql,
      HTAB *crosstab_hash,
      TupleDesc tupdesc,
      MemoryContext per_query_ctx,
      bool randomAccess)
{
 Tuplestorestate *tupstore;
 int num_categories = hash_get_num_entries(crosstab_hash);
 AttInMetadata *attinmeta = TupleDescGetAttInMetadata(tupdesc);
 char **values;
 HeapTuple tuple;
 int ret;
 uint64 proc;


 tupstore = tuplestore_begin_heap(randomAccess, 0, work_mem);


 if ((ret = SPI_connect()) < 0)

  elog(ERROR, "get_crosstab_tuplestore: SPI_connect returned %d", ret);


 ret = SPI_execute(sql, 1, 0);
 proc = SPI_processed;


 if ((ret == SPI_OK_SELECT) && (proc > 0))
 {
  SPITupleTable *spi_tuptable = SPI_tuptable;
  TupleDesc spi_tupdesc = spi_tuptable->tupdesc;
  int ncols = spi_tupdesc->natts;
  char *rowid;
  char *lastrowid = ((void*)0);
  bool firstpass = 1;
  uint64 i;
  int j;
  int result_ncols;

  if (num_categories == 0)
  {

   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("provided \"categories\" SQL must " "return 1 column of at least one row")));

  }
  if (ncols < 3)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid source data SQL statement"),
      errdetail("The provided SQL must return 3 " " columns; rowid, category, and values.")));


  result_ncols = (ncols - 2) + num_categories;


  if (tupdesc->natts != result_ncols)
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("invalid return type"),
      errdetail("Query-specified return " "tuple has %d columns but crosstab " "returns %d.", tupdesc->natts, result_ncols)));




  values = (char **) palloc0(result_ncols * sizeof(char *));

  for (i = 0; i < proc; i++)
  {
   HeapTuple spi_tuple;
   crosstab_cat_desc *catdesc;
   char *catname;


   spi_tuple = spi_tuptable->vals[i];


   rowid = SPI_getvalue(spi_tuple, spi_tupdesc, 1);





   if (firstpass || !xstreq(lastrowid, rowid))
   {




    if (!firstpass)
    {

     tuple = BuildTupleFromCStrings(attinmeta, values);

     tuplestore_puttuple(tupstore, tuple);

     for (j = 0; j < result_ncols; j++)
      xpfree(values[j]);
    }

    values[0] = rowid;
    for (j = 1; j < ncols - 2; j++)
     values[j] = SPI_getvalue(spi_tuple, spi_tupdesc, j + 1);


    firstpass = 0;
   }


   catname = SPI_getvalue(spi_tuple, spi_tupdesc, ncols - 1);

   if (catname != ((void*)0))
   {
    crosstab_HashTableLookup(crosstab_hash, catname, catdesc);

    if (catdesc)
     values[catdesc->attidx + ncols - 2] =
      SPI_getvalue(spi_tuple, spi_tupdesc, ncols);
   }

   xpfree(lastrowid);
   xpstrdup(lastrowid, rowid);
  }


  tuple = BuildTupleFromCStrings(attinmeta, values);

  tuplestore_puttuple(tupstore, tuple);
 }

 if (SPI_finish() != SPI_OK_FINISH)

  elog(ERROR, "get_crosstab_tuplestore: SPI_finish() failed");

 tuplestore_donestoring(tupstore);

 return tupstore;
}
