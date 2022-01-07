
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * connection; } ;
typedef int Oid ;
typedef TYPE_1__ ArchiveHandle ;


 int PQserverVersion (int *) ;
 int ahprintf (TYPE_1__*,char*,int ,...) ;

void
DropBlobIfExists(ArchiveHandle *AH, Oid oid)
{




 if (AH->connection == ((void*)0) ||
  PQserverVersion(AH->connection) >= 90000)
 {
  ahprintf(AH,
     "SELECT pg_catalog.lo_unlink(oid) "
     "FROM pg_catalog.pg_largeobject_metadata "
     "WHERE oid = '%u';\n",
     oid);
 }
 else
 {

  ahprintf(AH,
     "SELECT CASE WHEN EXISTS("
     "SELECT 1 FROM pg_catalog.pg_largeobject WHERE loid = '%u'"
     ") THEN pg_catalog.lo_unlink('%u') END;\n",
     oid, oid);
 }
}
