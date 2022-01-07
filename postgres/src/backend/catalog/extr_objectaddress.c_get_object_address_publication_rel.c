
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int objectId; } ;
struct TYPE_6__ {int oid; } ;
typedef scalar_t__ Relation ;
typedef TYPE_1__ Publication ;
typedef TYPE_2__ ObjectAddress ;
typedef int List ;


 int AccessShareLock ;
 int Anum_pg_publication_rel_oid ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 TYPE_1__* GetPublicationByName (char*,int) ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int InvalidOid ;
 int ObjectAddressSet (TYPE_2__,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PUBLICATIONRELMAP ;
 int PublicationRelRelationId ;
 int RelationGetRelationName (scalar_t__) ;
 int RelationGetRelid (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char*) ;
 int * linitial (int *) ;
 int lsecond (int *) ;
 int makeRangeVarFromNameList (int *) ;
 int relation_close (scalar_t__,int ) ;
 scalar_t__ relation_openrv_extended (int ,int ,int) ;
 char* strVal (int ) ;

__attribute__((used)) static ObjectAddress
get_object_address_publication_rel(List *object,
           Relation *relp, bool missing_ok)
{
 ObjectAddress address;
 Relation relation;
 List *relname;
 char *pubname;
 Publication *pub;

 ObjectAddressSet(address, PublicationRelRelationId, InvalidOid);

 relname = linitial(object);
 relation = relation_openrv_extended(makeRangeVarFromNameList(relname),
          AccessShareLock, missing_ok);
 if (!relation)
  return address;


 pubname = strVal(lsecond(object));


 pub = GetPublicationByName(pubname, missing_ok);
 if (!pub)
 {
  relation_close(relation, AccessShareLock);
  return address;
 }


 address.objectId =
  GetSysCacheOid2(PUBLICATIONRELMAP, Anum_pg_publication_rel_oid,
      ObjectIdGetDatum(RelationGetRelid(relation)),
      ObjectIdGetDatum(pub->oid));
 if (!OidIsValid(address.objectId))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("publication relation \"%s\" in publication \"%s\" does not exist",
       RelationGetRelationName(relation), pubname)));
  relation_close(relation, AccessShareLock);
  return address;
 }

 *relp = relation;
 return address;
}
