
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_28__ {scalar_t__ relfrozenxid; scalar_t__ relminmxid; char relpersistence; scalar_t__ relallvisible; scalar_t__ reltuples; scalar_t__ relpages; void* relfilenode; } ;
struct TYPE_27__ {int t_self; } ;
struct TYPE_26__ {void* relNode; } ;
struct TYPE_25__ {int rd_newRelfilenodeSubid; TYPE_1__* rd_rel; TYPE_3__ rd_node; } ;
struct TYPE_24__ {int relkind; int relisshared; int reltablespace; } ;
typedef int SMgrRelation ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ RelFileNode ;
typedef void* Oid ;
typedef scalar_t__ MultiXactId ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_class ;


 int Assert (int) ;
 int CacheInvalidateRelcache (TYPE_2__*) ;
 int CatalogTupleUpdate (TYPE_2__*,int *,TYPE_4__*) ;
 int CommandCounterIncrement () ;
 int EOXactListAdd (TYPE_2__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_4__*) ;
 int GetCurrentSubTransactionId () ;
 int GetCurrentTransactionId () ;
 void* GetNewRelFileNode (int ,int *,char) ;
 int HeapTupleIsValid (TYPE_4__*) ;
 scalar_t__ InvalidMultiXactId ;
 scalar_t__ InvalidTransactionId ;
 int ObjectIdGetDatum (int ) ;





 int RELOID ;
 int RelationCreateStorage (TYPE_3__,char) ;
 int RelationDropStorage (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 scalar_t__ RelationIsMapped (TYPE_2__*) ;
 int RelationMapUpdateMap (int ,void*,int ,int) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_4__* SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (TYPE_4__*) ;
 int smgrclose (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;
 int table_relation_set_new_filenode (TYPE_2__*,TYPE_3__*,char,scalar_t__*,scalar_t__*) ;

void
RelationSetNewRelfilenode(Relation relation, char persistence)
{
 Oid newrelfilenode;
 Relation pg_class;
 HeapTuple tuple;
 Form_pg_class classform;
 MultiXactId minmulti = InvalidMultiXactId;
 TransactionId freezeXid = InvalidTransactionId;
 RelFileNode newrnode;


 newrelfilenode = GetNewRelFileNode(relation->rd_rel->reltablespace, ((void*)0),
            persistence);




 pg_class = table_open(RelationRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopy1(RELOID,
        ObjectIdGetDatum(RelationGetRelid(relation)));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for relation %u",
    RelationGetRelid(relation));
 classform = (Form_pg_class) GETSTRUCT(tuple);




 RelationDropStorage(relation);
 newrnode = relation->rd_node;
 newrnode.relNode = newrelfilenode;

 switch (relation->rd_rel->relkind)
 {
  case 132:
  case 129:
   {

    SMgrRelation srel;

    srel = RelationCreateStorage(newrnode, persistence);
    smgrclose(srel);
   }
   break;

  case 130:
  case 128:
  case 131:
   table_relation_set_new_filenode(relation, &newrnode,
           persistence,
           &freezeXid, &minmulti);
   break;

  default:

   elog(ERROR, "relation \"%s\" does not have storage",
     RelationGetRelationName(relation));
   break;
 }
 if (RelationIsMapped(relation))
 {

  Assert(relation->rd_rel->relkind == 132);


  Assert(classform->relfrozenxid == freezeXid);
  Assert(classform->relminmxid == minmulti);
  Assert(classform->relpersistence == persistence);







  (void) GetCurrentTransactionId();


  RelationMapUpdateMap(RelationGetRelid(relation),
        newrelfilenode,
        relation->rd_rel->relisshared,
        0);


  CacheInvalidateRelcache(relation);
 }
 else
 {

  classform->relfilenode = newrelfilenode;


  if (relation->rd_rel->relkind != 129)
  {
   classform->relpages = 0;
   classform->reltuples = 0;
   classform->relallvisible = 0;
  }
  classform->relfrozenxid = freezeXid;
  classform->relminmxid = minmulti;
  classform->relpersistence = persistence;

  CatalogTupleUpdate(pg_class, &tuple->t_self, tuple);
 }

 heap_freetuple(tuple);

 table_close(pg_class, RowExclusiveLock);





 CommandCounterIncrement();






 relation->rd_newRelfilenodeSubid = GetCurrentSubTransactionId();


 EOXactListAdd(relation);
}
