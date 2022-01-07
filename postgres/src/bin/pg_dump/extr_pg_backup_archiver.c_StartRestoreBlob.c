
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ version; int loFd; int writingBlob; scalar_t__ connection; scalar_t__ lo_buf_used; int blobCount; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ArchiveHandle ;


 int DropBlobIfExists (TYPE_1__*,scalar_t__) ;
 int INV_WRITE ;
 scalar_t__ K_VERS_1_12 ;
 int PQerrorMessage (scalar_t__) ;
 int ahprintf (TYPE_1__*,char*,scalar_t__,int ) ;
 int fatal (char*,scalar_t__,int ) ;
 scalar_t__ lo_create (scalar_t__,scalar_t__) ;
 int lo_open (scalar_t__,scalar_t__,int ) ;
 int pg_log_info (char*,scalar_t__) ;

void
StartRestoreBlob(ArchiveHandle *AH, Oid oid, bool drop)
{
 bool old_blob_style = (AH->version < K_VERS_1_12);
 Oid loOid;

 AH->blobCount++;


 AH->lo_buf_used = 0;

 pg_log_info("restoring large object with OID %u", oid);


 if (old_blob_style && drop)
  DropBlobIfExists(AH, oid);

 if (AH->connection)
 {
  if (old_blob_style)
  {
   loOid = lo_create(AH->connection, oid);
   if (loOid == 0 || loOid != oid)
    fatal("could not create large object %u: %s",
       oid, PQerrorMessage(AH->connection));
  }
  AH->loFd = lo_open(AH->connection, oid, INV_WRITE);
  if (AH->loFd == -1)
   fatal("could not open large object %u: %s",
      oid, PQerrorMessage(AH->connection));
 }
 else
 {
  if (old_blob_style)
   ahprintf(AH, "SELECT pg_catalog.lo_open(pg_catalog.lo_create('%u'), %d);\n",
      oid, INV_WRITE);
  else
   ahprintf(AH, "SELECT pg_catalog.lo_open('%u', %d);\n",
      oid, INV_WRITE);
 }

 AH->writingBlob = 1;
}
