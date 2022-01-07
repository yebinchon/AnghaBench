
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_8__ {int temp_blks_written; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {int nbytes; scalar_t__ curOffset; scalar_t__ curFile; scalar_t__ numFiles; int dirty; scalar_t__ pos; TYPE_1__ buffer; int * files; } ;
typedef int File ;
typedef TYPE_2__ BufFile ;


 int Assert (int) ;
 int FileWrite (int ,scalar_t__,int,scalar_t__,int ) ;
 scalar_t__ MAX_PHYSICAL_FILESIZE ;
 int WAIT_EVENT_BUFFILE_WRITE ;
 int extendBufFile (TYPE_2__*) ;
 TYPE_3__ pgBufferUsage ;

__attribute__((used)) static void
BufFileDumpBuffer(BufFile *file)
{
 int wpos = 0;
 int bytestowrite;
 File thisfile;





 while (wpos < file->nbytes)
 {
  off_t availbytes;




  if (file->curOffset >= MAX_PHYSICAL_FILESIZE)
  {
   while (file->curFile + 1 >= file->numFiles)
    extendBufFile(file);
   file->curFile++;
   file->curOffset = 0L;
  }




  bytestowrite = file->nbytes - wpos;
  availbytes = MAX_PHYSICAL_FILESIZE - file->curOffset;

  if ((off_t) bytestowrite > availbytes)
   bytestowrite = (int) availbytes;

  thisfile = file->files[file->curFile];
  bytestowrite = FileWrite(thisfile,
         file->buffer.data + wpos,
         bytestowrite,
         file->curOffset,
         WAIT_EVENT_BUFFILE_WRITE);
  if (bytestowrite <= 0)
   return;
  file->curOffset += bytestowrite;
  wpos += bytestowrite;

  pgBufferUsage.temp_blks_written++;
 }
 file->dirty = 0;







 file->curOffset -= (file->nbytes - file->pos);
 if (file->curOffset < 0)
 {
  file->curFile--;
  Assert(file->curFile >= 0);
  file->curOffset += MAX_PHYSICAL_FILESIZE;
 }




 file->pos = 0;
 file->nbytes = 0;
}
