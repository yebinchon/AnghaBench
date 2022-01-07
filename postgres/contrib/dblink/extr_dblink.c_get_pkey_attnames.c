
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleDesc ;
struct TYPE_9__ {int * values; } ;
struct TYPE_11__ {int indnkeyatts; TYPE_1__ indkey; scalar_t__ indisprimary; } ;
struct TYPE_10__ {int rd_att; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int AccessShareLock ;
 int Anum_pg_index_indrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IndexIndrelidIndexId ;
 int IndexRelationId ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelid (TYPE_2__*) ;
 char* SPI_fname (int ,int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ palloc (int) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static char **
get_pkey_attnames(Relation rel, int16 *indnkeyatts)
{
 Relation indexRelation;
 ScanKeyData skey;
 SysScanDesc scan;
 HeapTuple indexTuple;
 int i;
 char **result = ((void*)0);
 TupleDesc tupdesc;


 *indnkeyatts = 0;

 tupdesc = rel->rd_att;


 indexRelation = table_open(IndexRelationId, AccessShareLock);
 ScanKeyInit(&skey,
    Anum_pg_index_indrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));

 scan = systable_beginscan(indexRelation, IndexIndrelidIndexId, 1,
         ((void*)0), 1, &skey);

 while (HeapTupleIsValid(indexTuple = systable_getnext(scan)))
 {
  Form_pg_index index = (Form_pg_index) GETSTRUCT(indexTuple);


  if (index->indisprimary)
  {
   *indnkeyatts = index->indnkeyatts;
   if (*indnkeyatts > 0)
   {
    result = (char **) palloc(*indnkeyatts * sizeof(char *));

    for (i = 0; i < *indnkeyatts; i++)
     result[i] = SPI_fname(tupdesc, index->indkey.values[i]);
   }
   break;
  }
 }

 systable_endscan(scan);
 table_close(indexRelation, AccessShareLock);

 return result;
}
