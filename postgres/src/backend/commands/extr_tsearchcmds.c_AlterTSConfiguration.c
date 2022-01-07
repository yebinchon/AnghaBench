
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tokentype; scalar_t__ dicts; int cfgname; } ;
struct TYPE_6__ {int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_ts_config ;
typedef TYPE_2__ AlterTSConfigurationStmt ;


 int ACLCHECK_NOT_OWNER ;
 int DropConfigurationMapping (TYPE_2__*,int ,int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetTSConfigTuple (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int MakeConfigurationMapping (TYPE_2__*,int ,int ) ;
 int NameListToString (int ) ;
 int OBJECT_TSCONFIGURATION ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int TSConfigMapRelationId ;
 int TSConfigRelationId ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int makeConfigurationDependencies (int ,int,int ) ;
 int pg_ts_config_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterTSConfiguration(AlterTSConfigurationStmt *stmt)
{
 HeapTuple tup;
 Oid cfgId;
 Relation relMap;
 ObjectAddress address;


 tup = GetTSConfigTuple(stmt->cfgname);
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("text search configuration \"%s\" does not exist",
      NameListToString(stmt->cfgname))));

 cfgId = ((Form_pg_ts_config) GETSTRUCT(tup))->oid;


 if (!pg_ts_config_ownercheck(cfgId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_TSCONFIGURATION,
        NameListToString(stmt->cfgname));

 relMap = table_open(TSConfigMapRelationId, RowExclusiveLock);


 if (stmt->dicts)
  MakeConfigurationMapping(stmt, tup, relMap);
 else if (stmt->tokentype)
  DropConfigurationMapping(stmt, tup, relMap);


 makeConfigurationDependencies(tup, 1, relMap);

 InvokeObjectPostAlterHook(TSConfigRelationId, cfgId, 0);

 ObjectAddressSet(address, TSConfigRelationId, cfgId);

 table_close(relMap, RowExclusiveLock);

 ReleaseSysCache(tup);

 return address;
}
