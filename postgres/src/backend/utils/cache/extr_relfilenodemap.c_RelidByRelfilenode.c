
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int skey ;
typedef int key ;
struct TYPE_12__ {scalar_t__ reltablespace; scalar_t__ relfilenode; scalar_t__ oid; } ;
struct TYPE_11__ {scalar_t__ relid; } ;
struct TYPE_10__ {scalar_t__ relfilenode; scalar_t__ reltablespace; } ;
struct TYPE_9__ {void* sk_argument; } ;
typedef int SysScanDesc ;
typedef TYPE_1__ ScanKeyData ;
typedef TYPE_2__ RelfilenodeMapKey ;
typedef TYPE_3__ RelfilenodeMapEntry ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int AccessShareLock ;
 int Assert (int) ;
 int ClassTblspcRelfilenodeIndexId ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 int HASH_ENTER ;
 int HASH_FIND ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InitializeRelfilenodeMap () ;
 scalar_t__ InvalidOid ;
 int MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ MyDatabaseTableSpace ;
 void* ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RelationMapFilenodeToOid (scalar_t__,int) ;
 int RelationRelationId ;
 int * RelfilenodeMapHash ;
 int elog (int ,char*,...) ;
 TYPE_3__* hash_search (int *,void*,int ,int*) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int relfilenode_skey ;
 int systable_beginscan (int ,int ,int,int *,int,TYPE_1__*) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
RelidByRelfilenode(Oid reltablespace, Oid relfilenode)
{
 RelfilenodeMapKey key;
 RelfilenodeMapEntry *entry;
 bool found;
 SysScanDesc scandesc;
 Relation relation;
 HeapTuple ntp;
 ScanKeyData skey[2];
 Oid relid;

 if (RelfilenodeMapHash == ((void*)0))
  InitializeRelfilenodeMap();


 if (reltablespace == MyDatabaseTableSpace)
  reltablespace = 0;

 MemSet(&key, 0, sizeof(key));
 key.reltablespace = reltablespace;
 key.relfilenode = relfilenode;
 entry = hash_search(RelfilenodeMapHash, (void *) &key, HASH_FIND, &found);

 if (found)
  return entry->relid;




 relid = InvalidOid;

 if (reltablespace == GLOBALTABLESPACE_OID)
 {



  relid = RelationMapFilenodeToOid(relfilenode, 1);
 }
 else
 {






  relation = table_open(RelationRelationId, AccessShareLock);


  memcpy(skey, relfilenode_skey, sizeof(skey));


  skey[0].sk_argument = ObjectIdGetDatum(reltablespace);
  skey[1].sk_argument = ObjectIdGetDatum(relfilenode);

  scandesc = systable_beginscan(relation,
           ClassTblspcRelfilenodeIndexId,
           1,
           ((void*)0),
           2,
           skey);

  found = 0;

  while (HeapTupleIsValid(ntp = systable_getnext(scandesc)))
  {
   Form_pg_class classform = (Form_pg_class) GETSTRUCT(ntp);

   if (found)
    elog(ERROR,
      "unexpected duplicate for tablespace %u, relfilenode %u",
      reltablespace, relfilenode);
   found = 1;

   Assert(classform->reltablespace == reltablespace);
   Assert(classform->relfilenode == relfilenode);
   relid = classform->oid;
  }

  systable_endscan(scandesc);
  table_close(relation, AccessShareLock);


  if (!found)
   relid = RelationMapFilenodeToOid(relfilenode, 0);
 }






 entry = hash_search(RelfilenodeMapHash, (void *) &key, HASH_ENTER, &found);
 if (found)
  elog(ERROR, "corrupted hashtable");
 entry->relid = relid;

 return relid;
}
