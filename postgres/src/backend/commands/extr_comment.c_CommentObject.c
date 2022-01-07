
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int Value ;
struct TYPE_17__ {int objtype; int comment; scalar_t__ object; } ;
struct TYPE_16__ {int objectSubId; int classId; int objectId; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
struct TYPE_14__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ ObjectAddress ;
typedef TYPE_4__ CommentStmt ;


 int CreateComments (int ,int ,int ,int ) ;
 int CreateSharedComments (int ,int ,int ) ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 TYPE_3__ InvalidObjectAddress ;
 int NoLock ;

 int OBJECT_DATABASE ;
 int OBJECT_ROLE ;
 int OBJECT_TABLESPACE ;
 int OidIsValid (int ) ;
 int RELKIND_COMPOSITE_TYPE ;
 int RELKIND_FOREIGN_TABLE ;
 int RELKIND_MATVIEW ;
 int RELKIND_PARTITIONED_TABLE ;
 int RELKIND_RELATION ;
 int RELKIND_VIEW ;
 char* RelationGetRelationName (TYPE_2__*) ;
 int ShareUpdateExclusiveLock ;
 int WARNING ;
 int check_object_ownership (int ,int,TYPE_3__,scalar_t__,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_database_oid (char*,int) ;
 TYPE_3__ get_object_address (int,scalar_t__,TYPE_2__**,int ,int) ;
 int relation_close (TYPE_2__*,int ) ;
 char* strVal (int *) ;

ObjectAddress
CommentObject(CommentStmt *stmt)
{
 Relation relation;
 ObjectAddress address = InvalidObjectAddress;
 if (stmt->objtype == OBJECT_DATABASE)
 {
  char *database = strVal((Value *) stmt->object);

  if (!OidIsValid(get_database_oid(database, 1)))
  {
   ereport(WARNING,
     (errcode(ERRCODE_UNDEFINED_DATABASE),
      errmsg("database \"%s\" does not exist", database)));
   return address;
  }
 }







 address = get_object_address(stmt->objtype, stmt->object,
         &relation, ShareUpdateExclusiveLock, 0);


 check_object_ownership(GetUserId(), stmt->objtype, address,
         stmt->object, relation);


 switch (stmt->objtype)
 {
  case 128:
   if (relation->rd_rel->relkind != RELKIND_RELATION &&
    relation->rd_rel->relkind != RELKIND_VIEW &&
    relation->rd_rel->relkind != RELKIND_MATVIEW &&
    relation->rd_rel->relkind != RELKIND_COMPOSITE_TYPE &&
    relation->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
    relation->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a table, view, materialized view, composite type, or foreign table",
        RelationGetRelationName(relation))));
   break;
  default:
   break;
 }






 if (stmt->objtype == OBJECT_DATABASE || stmt->objtype == OBJECT_TABLESPACE
  || stmt->objtype == OBJECT_ROLE)
  CreateSharedComments(address.objectId, address.classId, stmt->comment);
 else
  CreateComments(address.objectId, address.classId, address.objectSubId,
        stmt->comment);







 if (relation != ((void*)0))
  relation_close(relation, NoLock);

 return address;
}
