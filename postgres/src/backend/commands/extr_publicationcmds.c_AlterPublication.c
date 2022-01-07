
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ options; int pubname; } ;
struct TYPE_6__ {int oid; } ;
typedef int Relation ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_publication ;
typedef TYPE_2__ AlterPublicationStmt ;


 int ACLCHECK_NOT_OWNER ;
 int AlterPublicationOptions (TYPE_2__*,int ,int ) ;
 int AlterPublicationTables (TYPE_2__*,int ,int ) ;
 int CStringGetDatum (int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 int OBJECT_PUBLICATION ;
 int PUBLICATIONNAME ;
 int PublicationRelationId ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (int ) ;
 int pg_publication_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
AlterPublication(AlterPublicationStmt *stmt)
{
 Relation rel;
 HeapTuple tup;
 Form_pg_publication pubform;

 rel = table_open(PublicationRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(PUBLICATIONNAME,
         CStringGetDatum(stmt->pubname));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("publication \"%s\" does not exist",
      stmt->pubname)));

 pubform = (Form_pg_publication) GETSTRUCT(tup);


 if (!pg_publication_ownercheck(pubform->oid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_PUBLICATION,
        stmt->pubname);

 if (stmt->options)
  AlterPublicationOptions(stmt, rel, tup);
 else
  AlterPublicationTables(stmt, rel, tup);


 heap_freetuple(tup);
 table_close(rel, RowExclusiveLock);
}
