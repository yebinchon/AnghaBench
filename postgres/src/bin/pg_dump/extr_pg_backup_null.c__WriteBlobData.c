
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int ArchiveHandle ;


 int ahprintf (int *,char*,int ) ;
 int appendByteaLiteralAHX (TYPE_1__*,unsigned char const*,size_t,int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
_WriteBlobData(ArchiveHandle *AH, const void *data, size_t dLen)
{
 if (dLen > 0)
 {
  PQExpBuffer buf = createPQExpBuffer();

  appendByteaLiteralAHX(buf,
         (const unsigned char *) data,
         dLen,
         AH);

  ahprintf(AH, "SELECT pg_catalog.lowrite(0, %s);\n", buf->data);

  destroyPQExpBuffer(buf);
 }
 return;
}
