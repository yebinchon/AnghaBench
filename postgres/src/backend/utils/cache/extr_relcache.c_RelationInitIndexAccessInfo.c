
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_17__ {int values; } ;
typedef TYPE_3__ oidvector ;
struct TYPE_18__ {int values; } ;
typedef TYPE_4__ int2vector ;
typedef int int16 ;
struct TYPE_20__ {int amhandler; } ;
struct TYPE_19__ {int * rd_amcache; int * rd_exclstrats; int * rd_exclprocs; int * rd_exclops; void* rd_indpred; void* rd_indexprs; int * rd_indoption; int rd_indextuple; int * rd_opcintype; int * rd_opfamily; int * rd_support; int * rd_indcollation; int * rd_supportinfo; TYPE_2__* rd_indam; int rd_indexcxt; int rd_amhandler; TYPE_1__* rd_rel; scalar_t__ rd_index; } ;
struct TYPE_16__ {int amsupport; } ;
struct TYPE_15__ {int relam; } ;
typedef TYPE_5__* Relation ;
typedef int RegProcedure ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_index ;
typedef TYPE_6__* Form_pg_am ;
typedef int FmgrInfo ;
typedef int Datum ;


 int ALLOCSET_SMALL_SIZES ;
 int AMOID ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Anum_pg_index_indclass ;
 int Anum_pg_index_indcollation ;
 int Anum_pg_index_indoption ;
 int Assert (int) ;
 int CacheMemoryContext ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetPgIndexDescriptor () ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int IndexRelationGetNumberOfAttributes (TYPE_5__*) ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_5__*) ;
 int IndexSupportInitialize (TYPE_3__*,int *,int *,int *,int,int) ;
 int InitIndexAmRoutine (TYPE_5__*) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int MemoryContextCopyAndSetIdentifier (int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 void* NIL ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetNumberOfAttributes (TYPE_5__*) ;
 int RelationGetRelationName (TYPE_5__*) ;
 int RelationGetRelid (TYPE_5__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int fastgetattr (int ,int ,int ,int*) ;
 int heap_copytuple (int ) ;
 int memcpy (int *,int ,int) ;

void
RelationInitIndexAccessInfo(Relation relation)
{
 HeapTuple tuple;
 Form_pg_am aform;
 Datum indcollDatum;
 Datum indclassDatum;
 Datum indoptionDatum;
 bool isnull;
 oidvector *indcoll;
 oidvector *indclass;
 int2vector *indoption;
 MemoryContext indexcxt;
 MemoryContext oldcontext;
 int indnatts;
 int indnkeyatts;
 uint16 amsupport;






 tuple = SearchSysCache1(INDEXRELID,
       ObjectIdGetDatum(RelationGetRelid(relation)));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for index %u",
    RelationGetRelid(relation));
 oldcontext = MemoryContextSwitchTo(CacheMemoryContext);
 relation->rd_indextuple = heap_copytuple(tuple);
 relation->rd_index = (Form_pg_index) GETSTRUCT(relation->rd_indextuple);
 MemoryContextSwitchTo(oldcontext);
 ReleaseSysCache(tuple);




 tuple = SearchSysCache1(AMOID, ObjectIdGetDatum(relation->rd_rel->relam));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for access method %u",
    relation->rd_rel->relam);
 aform = (Form_pg_am) GETSTRUCT(tuple);
 relation->rd_amhandler = aform->amhandler;
 ReleaseSysCache(tuple);

 indnatts = RelationGetNumberOfAttributes(relation);
 if (indnatts != IndexRelationGetNumberOfAttributes(relation))
  elog(ERROR, "relnatts disagrees with indnatts for index %u",
    RelationGetRelid(relation));
 indnkeyatts = IndexRelationGetNumberOfKeyAttributes(relation);






 indexcxt = AllocSetContextCreate(CacheMemoryContext,
          "index info",
          ALLOCSET_SMALL_SIZES);
 relation->rd_indexcxt = indexcxt;
 MemoryContextCopyAndSetIdentifier(indexcxt,
           RelationGetRelationName(relation));




 InitIndexAmRoutine(relation);





 relation->rd_opfamily = (Oid *)
  MemoryContextAllocZero(indexcxt, indnkeyatts * sizeof(Oid));
 relation->rd_opcintype = (Oid *)
  MemoryContextAllocZero(indexcxt, indnkeyatts * sizeof(Oid));

 amsupport = relation->rd_indam->amsupport;
 if (amsupport > 0)
 {
  int nsupport = indnatts * amsupport;

  relation->rd_support = (RegProcedure *)
   MemoryContextAllocZero(indexcxt, nsupport * sizeof(RegProcedure));
  relation->rd_supportinfo = (FmgrInfo *)
   MemoryContextAllocZero(indexcxt, nsupport * sizeof(FmgrInfo));
 }
 else
 {
  relation->rd_support = ((void*)0);
  relation->rd_supportinfo = ((void*)0);
 }

 relation->rd_indcollation = (Oid *)
  MemoryContextAllocZero(indexcxt, indnkeyatts * sizeof(Oid));

 relation->rd_indoption = (int16 *)
  MemoryContextAllocZero(indexcxt, indnkeyatts * sizeof(int16));






 indcollDatum = fastgetattr(relation->rd_indextuple,
          Anum_pg_index_indcollation,
          GetPgIndexDescriptor(),
          &isnull);
 Assert(!isnull);
 indcoll = (oidvector *) DatumGetPointer(indcollDatum);
 memcpy(relation->rd_indcollation, indcoll->values, indnkeyatts * sizeof(Oid));






 indclassDatum = fastgetattr(relation->rd_indextuple,
        Anum_pg_index_indclass,
        GetPgIndexDescriptor(),
        &isnull);
 Assert(!isnull);
 indclass = (oidvector *) DatumGetPointer(indclassDatum);






 IndexSupportInitialize(indclass, relation->rd_support,
         relation->rd_opfamily, relation->rd_opcintype,
         amsupport, indnkeyatts);




 indoptionDatum = fastgetattr(relation->rd_indextuple,
         Anum_pg_index_indoption,
         GetPgIndexDescriptor(),
         &isnull);
 Assert(!isnull);
 indoption = (int2vector *) DatumGetPointer(indoptionDatum);
 memcpy(relation->rd_indoption, indoption->values, indnkeyatts * sizeof(int16));




 relation->rd_indexprs = NIL;
 relation->rd_indpred = NIL;
 relation->rd_exclops = ((void*)0);
 relation->rd_exclprocs = ((void*)0);
 relation->rd_exclstrats = ((void*)0);
 relation->rd_amcache = ((void*)0);
}
