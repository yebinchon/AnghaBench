
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t (* ReadFunc ) (int *,char**,size_t*) ;
typedef int ArchiveHandle ;


 size_t ZLIB_OUT_SIZE ;
 int ahwrite (char*,int,size_t,int *) ;
 int free (char*) ;
 char* pg_malloc (size_t) ;

__attribute__((used)) static void
ReadDataFromArchiveNone(ArchiveHandle *AH, ReadFunc readF)
{
 size_t cnt;
 char *buf;
 size_t buflen;

 buf = pg_malloc(ZLIB_OUT_SIZE);
 buflen = ZLIB_OUT_SIZE;

 while ((cnt = readF(AH, &buf, &buflen)))
 {
  ahwrite(buf, 1, cnt, AH);
 }

 free(buf);
}
