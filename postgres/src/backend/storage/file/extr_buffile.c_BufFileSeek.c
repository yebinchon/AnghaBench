
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_4__ {int curFile; scalar_t__ curOffset; int pos; scalar_t__ nbytes; int numFiles; } ;
typedef TYPE_1__ BufFile ;


 scalar_t__ BufFileFlush (TYPE_1__*) ;
 int EOF ;
 int ERROR ;
 scalar_t__ MAX_PHYSICAL_FILESIZE ;



 int elog (int ,char*,int) ;

int
BufFileSeek(BufFile *file, int fileno, off_t offset, int whence)
{
 int newFile;
 off_t newOffset;

 switch (whence)
 {
  case 128:
   if (fileno < 0)
    return EOF;
   newFile = fileno;
   newOffset = offset;
   break;
  case 130:






   newFile = file->curFile;
   newOffset = (file->curOffset + file->pos) + offset;
   break;





  default:
   elog(ERROR, "invalid whence: %d", whence);
   return EOF;
 }
 while (newOffset < 0)
 {
  if (--newFile < 0)
   return EOF;
  newOffset += MAX_PHYSICAL_FILESIZE;
 }
 if (newFile == file->curFile &&
  newOffset >= file->curOffset &&
  newOffset <= file->curOffset + file->nbytes)
 {






  file->pos = (int) (newOffset - file->curOffset);
  return 0;
 }

 if (BufFileFlush(file) != 0)
  return EOF;
 if (newFile == file->numFiles && newOffset == 0)
 {
  newFile--;
  newOffset = MAX_PHYSICAL_FILESIZE;
 }
 while (newOffset > MAX_PHYSICAL_FILESIZE)
 {
  if (++newFile >= file->numFiles)
   return EOF;
  newOffset -= MAX_PHYSICAL_FILESIZE;
 }
 if (newFile >= file->numFiles)
  return EOF;

 file->curFile = newFile;
 file->curOffset = newOffset;
 file->pos = 0;
 file->nbytes = 0;
 return 0;
}
