
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cfgparser; int cfgowner; int cfgnamespace; int oid; } ;
struct TYPE_9__ {int mapdict; } ;
struct TYPE_8__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef scalar_t__ Relation ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_ts_config_map ;
typedef TYPE_3__* Form_pg_ts_config ;


 int Anum_pg_ts_config_map_mapcfg ;
 int BTEqualStrategyNumber ;
 int CommandCounterIncrement () ;
 int DEPENDENCY_NORMAL ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TSConfigMapIndexId ;
 int TSConfigRelationId ;
 int TSDictionaryRelationId ;
 int TSParserRelationId ;
 int add_exact_object_address (TYPE_1__*,int *) ;
 int deleteDependencyRecordsFor (int ,int ,int) ;
 int deleteSharedDependencyRecordsFor (int ,int ,int ) ;
 int free_object_addresses (int *) ;
 int * new_object_addresses () ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnOwner (int ,int ,int ) ;
 int record_object_address_dependencies (TYPE_1__*,int *,int ) ;
 int systable_beginscan (scalar_t__,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static ObjectAddress
makeConfigurationDependencies(HeapTuple tuple, bool removeOld,
         Relation mapRel)
{
 Form_pg_ts_config cfg = (Form_pg_ts_config) GETSTRUCT(tuple);
 ObjectAddresses *addrs;
 ObjectAddress myself,
    referenced;

 myself.classId = TSConfigRelationId;
 myself.objectId = cfg->oid;
 myself.objectSubId = 0;


 if (removeOld)
 {
  deleteDependencyRecordsFor(myself.classId, myself.objectId, 1);
  deleteSharedDependencyRecordsFor(myself.classId, myself.objectId, 0);
 }






 addrs = new_object_addresses();


 referenced.classId = NamespaceRelationId;
 referenced.objectId = cfg->cfgnamespace;
 referenced.objectSubId = 0;
 add_exact_object_address(&referenced, addrs);


 recordDependencyOnOwner(myself.classId, myself.objectId, cfg->cfgowner);


 recordDependencyOnCurrentExtension(&myself, removeOld);


 referenced.classId = TSParserRelationId;
 referenced.objectId = cfg->cfgparser;
 referenced.objectSubId = 0;
 add_exact_object_address(&referenced, addrs);


 if (mapRel)
 {
  ScanKeyData skey;
  SysScanDesc scan;
  HeapTuple maptup;


  CommandCounterIncrement();

  ScanKeyInit(&skey,
     Anum_pg_ts_config_map_mapcfg,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(myself.objectId));

  scan = systable_beginscan(mapRel, TSConfigMapIndexId, 1,
          ((void*)0), 1, &skey);

  while (HeapTupleIsValid((maptup = systable_getnext(scan))))
  {
   Form_pg_ts_config_map cfgmap = (Form_pg_ts_config_map) GETSTRUCT(maptup);

   referenced.classId = TSDictionaryRelationId;
   referenced.objectId = cfgmap->mapdict;
   referenced.objectSubId = 0;
   add_exact_object_address(&referenced, addrs);
  }

  systable_endscan(scan);
 }


 record_object_address_dependencies(&myself, addrs, DEPENDENCY_NORMAL);

 free_object_addresses(addrs);

 return myself;
}
