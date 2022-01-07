
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {int relnamespace; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int LOCKMODE ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int ObjectAddressSet (int ,int ,int ) ;
 int OidIsValid (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationRelationId ;
 int check_index_is_clusterable (TYPE_2__*,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_relname_relid (char const*,int ) ;
 int mark_index_clustered (TYPE_2__*,int ,int) ;

__attribute__((used)) static ObjectAddress
ATExecClusterOn(Relation rel, const char *indexName, LOCKMODE lockmode)
{
 Oid indexOid;
 ObjectAddress address;

 indexOid = get_relname_relid(indexName, rel->rd_rel->relnamespace);

 if (!OidIsValid(indexOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("index \"%s\" for table \"%s\" does not exist",
      indexName, RelationGetRelationName(rel))));


 check_index_is_clusterable(rel, indexOid, 0, lockmode);


 mark_index_clustered(rel, indexOid, 0);

 ObjectAddressSet(address,
      RelationRelationId, indexOid);

 return address;
}
