
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_28__ {int fdwvalidator; } ;
struct TYPE_27__ {int fdwid; } ;
struct TYPE_26__ {int ftserver; } ;
struct TYPE_25__ {int t_self; } ;
struct TYPE_24__ {int rd_id; } ;
typedef TYPE_1__* Relation ;
typedef int List ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_foreign_table ;
typedef TYPE_4__ ForeignServer ;
typedef TYPE_5__ ForeignDataWrapper ;
typedef int Datum ;


 int Anum_pg_foreign_table_ftoptions ;
 int CacheInvalidateRelcache (TYPE_1__*) ;
 int CatalogTupleUpdate (TYPE_1__*,int *,TYPE_2__*) ;
 int DatumGetPointer (int) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNTABLEREL ;
 int ForeignTableRelationId ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 TYPE_5__* GetForeignDataWrapper (int ) ;
 TYPE_4__* GetForeignServer (int ) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int * NIL ;
 int Natts_pg_foreign_table ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 int RelationGetDescr (TYPE_1__*) ;
 int RelationGetRelationName (TYPE_1__*) ;
 int RelationGetRelid (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int transformGenericOptions (int ,int,int *,int ) ;

__attribute__((used)) static void
ATExecGenericOptions(Relation rel, List *options)
{
 Relation ftrel;
 ForeignServer *server;
 ForeignDataWrapper *fdw;
 HeapTuple tuple;
 bool isnull;
 Datum repl_val[Natts_pg_foreign_table];
 bool repl_null[Natts_pg_foreign_table];
 bool repl_repl[Natts_pg_foreign_table];
 Datum datum;
 Form_pg_foreign_table tableform;

 if (options == NIL)
  return;

 ftrel = table_open(ForeignTableRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(FOREIGNTABLEREL, rel->rd_id);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign table \"%s\" does not exist",
      RelationGetRelationName(rel))));
 tableform = (Form_pg_foreign_table) GETSTRUCT(tuple);
 server = GetForeignServer(tableform->ftserver);
 fdw = GetForeignDataWrapper(server->fdwid);

 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));


 datum = SysCacheGetAttr(FOREIGNTABLEREL,
       tuple,
       Anum_pg_foreign_table_ftoptions,
       &isnull);
 if (isnull)
  datum = PointerGetDatum(((void*)0));


 datum = transformGenericOptions(ForeignTableRelationId,
         datum,
         options,
         fdw->fdwvalidator);

 if (PointerIsValid(DatumGetPointer(datum)))
  repl_val[Anum_pg_foreign_table_ftoptions - 1] = datum;
 else
  repl_null[Anum_pg_foreign_table_ftoptions - 1] = 1;

 repl_repl[Anum_pg_foreign_table_ftoptions - 1] = 1;



 tuple = heap_modify_tuple(tuple, RelationGetDescr(ftrel),
         repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(ftrel, &tuple->t_self, tuple);





 CacheInvalidateRelcache(rel);

 InvokeObjectPostAlterHook(ForeignTableRelationId,
         RelationGetRelid(rel), 0);

 table_close(ftrel, RowExclusiveLock);

 heap_freetuple(tuple);
}
