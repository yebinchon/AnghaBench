
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t data; } ;
struct TYPE_7__ {scalar_t__ pos; scalar_t__ nbytes; TYPE_1__ buffer; int curOffset; scalar_t__ dirty; } ;
typedef TYPE_2__ BufFile ;


 int Assert (int) ;
 scalar_t__ BufFileFlush (TYPE_2__*) ;
 int BufFileLoadBuffer (TYPE_2__*) ;
 int memcpy (void*,size_t,size_t) ;

size_t
BufFileRead(BufFile *file, void *ptr, size_t size)
{
 size_t nread = 0;
 size_t nthistime;

 if (file->dirty)
 {
  if (BufFileFlush(file) != 0)
   return 0;
  Assert(!file->dirty);
 }

 while (size > 0)
 {
  if (file->pos >= file->nbytes)
  {

   file->curOffset += file->pos;
   file->pos = 0;
   file->nbytes = 0;
   BufFileLoadBuffer(file);
   if (file->nbytes <= 0)
    break;
  }

  nthistime = file->nbytes - file->pos;
  if (nthistime > size)
   nthistime = size;
  Assert(nthistime > 0);

  memcpy(ptr, file->buffer.data + file->pos, nthistime);

  file->pos += nthistime;
  ptr = (void *) ((char *) ptr + nthistime);
  size -= nthistime;
  nread += nthistime;
 }

 return nread;
}
