
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;


 size_t ReadInt (int *) ;
 int _ReadBuf (int *,char*,size_t) ;
 int free (char*) ;
 scalar_t__ pg_malloc (size_t) ;

__attribute__((used)) static size_t
_CustomReadFunc(ArchiveHandle *AH, char **buf, size_t *buflen)
{
 size_t blkLen;


 blkLen = ReadInt(AH);
 if (blkLen == 0)
  return 0;


 if (blkLen > *buflen)
 {
  free(*buf);
  *buf = (char *) pg_malloc(blkLen);
  *buflen = blkLen;
 }


 _ReadBuf(AH, *buf, blkLen);

 return blkLen;
}
