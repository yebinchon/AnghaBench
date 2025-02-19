
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ pos; int dirty; scalar_t__ nbytes; TYPE_1__ buffer; int curOffset; int readOnly; } ;
typedef TYPE_2__ BufFile ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int BufFileDumpBuffer (TYPE_2__*) ;
 int memcpy (scalar_t__,void*,size_t) ;

size_t
BufFileWrite(BufFile *file, void *ptr, size_t size)
{
 size_t nwritten = 0;
 size_t nthistime;

 Assert(!file->readOnly);

 while (size > 0)
 {
  if (file->pos >= BLCKSZ)
  {

   if (file->dirty)
   {
    BufFileDumpBuffer(file);
    if (file->dirty)
     break;
   }
   else
   {

    file->curOffset += file->pos;
    file->pos = 0;
    file->nbytes = 0;
   }
  }

  nthistime = BLCKSZ - file->pos;
  if (nthistime > size)
   nthistime = size;
  Assert(nthistime > 0);

  memcpy(file->buffer.data + file->pos, ptr, nthistime);

  file->dirty = 1;
  file->pos += nthistime;
  if (file->nbytes < file->pos)
   file->nbytes = file->pos;
  ptr = (void *) ((char *) ptr + nthistime);
  size -= nthistime;
  nwritten += nthistime;
 }

 return nwritten;
}
