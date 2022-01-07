
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {void* amhandler; } ;
struct TYPE_8__ {void* rd_amhandler; TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relkind; scalar_t__ relam; } ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_am ;


 int AMOID ;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 void* HEAP_TABLE_AM_HANDLER_OID ;
 scalar_t__ HEAP_TABLE_AM_OID ;
 int HeapTupleIsValid (int ) ;
 int InitTableAmRoutine (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsCatalogRelation (TYPE_2__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_SEQUENCE ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;

void
RelationInitTableAccessMethod(Relation relation)
{
 HeapTuple tuple;
 Form_pg_am aform;

 if (relation->rd_rel->relkind == RELKIND_SEQUENCE)
 {





  relation->rd_amhandler = HEAP_TABLE_AM_HANDLER_OID;
 }
 else if (IsCatalogRelation(relation))
 {



  Assert(relation->rd_rel->relam == HEAP_TABLE_AM_OID);
  relation->rd_amhandler = HEAP_TABLE_AM_HANDLER_OID;
 }
 else
 {




  Assert(relation->rd_rel->relam != InvalidOid);
  tuple = SearchSysCache1(AMOID,
        ObjectIdGetDatum(relation->rd_rel->relam));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for access method %u",
     relation->rd_rel->relam);
  aform = (Form_pg_am) GETSTRUCT(tuple);
  relation->rd_amhandler = aform->amhandler;
  ReleaseSysCache(tuple);
 }




 InitTableAmRoutine(relation);
}
