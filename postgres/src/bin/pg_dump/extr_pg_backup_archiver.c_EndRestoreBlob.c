
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lo_buf_used; int loFd; scalar_t__ connection; scalar_t__ writingBlob; } ;
typedef int Oid ;
typedef TYPE_1__ ArchiveHandle ;


 int ahprintf (TYPE_1__*,char*) ;
 int dump_lo_buf (TYPE_1__*) ;
 int lo_close (scalar_t__,int) ;

void
EndRestoreBlob(ArchiveHandle *AH, Oid oid)
{
 if (AH->lo_buf_used > 0)
 {

  dump_lo_buf(AH);
 }

 AH->writingBlob = 0;

 if (AH->connection)
 {
  lo_close(AH->connection, AH->loFd);
  AH->loFd = -1;
 }
 else
 {
  ahprintf(AH, "SELECT pg_catalog.lo_close(0);\n\n");
 }
}
