
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t lo_buf_used; int writingBlob; scalar_t__ lo_buf; int loFd; scalar_t__ connection; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef TYPE_2__ ArchiveHandle ;


 int ahprintf (TYPE_2__*,char*,int ) ;
 int appendByteaLiteralAHX (TYPE_1__*,unsigned char const*,size_t,TYPE_2__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fatal (char*,unsigned long,unsigned long) ;
 size_t lo_write (scalar_t__,int ,scalar_t__,size_t) ;
 int ngettext (char*,char*,size_t) ;
 int pg_log_debug (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void
dump_lo_buf(ArchiveHandle *AH)
{
 if (AH->connection)
 {
  size_t res;

  res = lo_write(AH->connection, AH->loFd, AH->lo_buf, AH->lo_buf_used);
  pg_log_debug(ngettext("wrote %lu byte of large object data (result = %lu)",
         "wrote %lu bytes of large object data (result = %lu)",
         AH->lo_buf_used),
      (unsigned long) AH->lo_buf_used, (unsigned long) res);
  if (res != AH->lo_buf_used)
   fatal("could not write to large object (result: %lu, expected: %lu)",
      (unsigned long) res, (unsigned long) AH->lo_buf_used);
 }
 else
 {
  PQExpBuffer buf = createPQExpBuffer();

  appendByteaLiteralAHX(buf,
         (const unsigned char *) AH->lo_buf,
         AH->lo_buf_used,
         AH);


  AH->writingBlob = 0;
  ahprintf(AH, "SELECT pg_catalog.lowrite(0, %s);\n", buf->data);
  AH->writingBlob = 1;

  destroyPQExpBuffer(buf);
 }
 AH->lo_buf_used = 0;
}
