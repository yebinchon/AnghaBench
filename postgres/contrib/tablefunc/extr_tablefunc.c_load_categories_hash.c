
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int ctl ;
struct TYPE_10__ {char* catname; scalar_t__ attidx; } ;
typedef TYPE_1__ crosstab_cat_desc ;
typedef int crosstab_HashEnt ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {int entrysize; int hcxt; int keysize; } ;
struct TYPE_12__ {int * vals; TYPE_2__* tupdesc; } ;
struct TYPE_11__ {int natts; } ;
typedef TYPE_3__ SPITupleTable ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int HTAB ;
typedef TYPE_4__ HASHCTL ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int INIT_CATS ;
 int MAX_CATNAME_LEN ;
 int MemSet (TYPE_4__*,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int SPI_execute (char*,int,int ) ;
 scalar_t__ SPI_finish () ;
 char* SPI_getvalue (int ,TYPE_2__*,int) ;
 scalar_t__ SPI_processed ;
 TYPE_3__* SPI_tuptable ;
 int crosstab_HashTableInsert (int *,TYPE_1__*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * hash_create (char*,int ,TYPE_4__*,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static HTAB *
load_categories_hash(char *cats_sql, MemoryContext per_query_ctx)
{
 HTAB *crosstab_hash;
 HASHCTL ctl;
 int ret;
 uint64 proc;
 MemoryContext SPIcontext;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = MAX_CATNAME_LEN;
 ctl.entrysize = sizeof(crosstab_HashEnt);
 ctl.hcxt = per_query_ctx;





 crosstab_hash = hash_create("crosstab hash",
        INIT_CATS,
        &ctl,
        HASH_ELEM | HASH_CONTEXT);


 if ((ret = SPI_connect()) < 0)

  elog(ERROR, "load_categories_hash: SPI_connect returned %d", ret);


 ret = SPI_execute(cats_sql, 1, 0);
 proc = SPI_processed;


 if ((ret == SPI_OK_SELECT) && (proc > 0))
 {
  SPITupleTable *spi_tuptable = SPI_tuptable;
  TupleDesc spi_tupdesc = spi_tuptable->tupdesc;
  uint64 i;





  if (spi_tupdesc->natts != 1)
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("provided \"categories\" SQL must " "return 1 column of at least one row")));


  for (i = 0; i < proc; i++)
  {
   crosstab_cat_desc *catdesc;
   char *catname;
   HeapTuple spi_tuple;


   spi_tuple = spi_tuptable->vals[i];


   catname = SPI_getvalue(spi_tuple, spi_tupdesc, 1);

   SPIcontext = MemoryContextSwitchTo(per_query_ctx);

   catdesc = (crosstab_cat_desc *) palloc(sizeof(crosstab_cat_desc));
   catdesc->catname = catname;
   catdesc->attidx = i;


   crosstab_HashTableInsert(crosstab_hash, catdesc);

   MemoryContextSwitchTo(SPIcontext);
  }
 }

 if (SPI_finish() != SPI_OK_FINISH)

  elog(ERROR, "load_categories_hash: SPI_finish() failed");

 return crosstab_hash;
}
