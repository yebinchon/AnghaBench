
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zerobuf ;
struct TYPE_5__ {scalar_t__ avail_out; scalar_t__ avail_in; int * next_in; } ;
struct TYPE_4__ {int fd; char* zlibOut; int tarfilename; scalar_t__ sync; TYPE_2__* zp; int compression; scalar_t__ currentfile; } ;


 int CLOSE_NORMAL ;
 scalar_t__ ENOSPC ;
 int MemSet (char*,int ,int) ;
 scalar_t__ ZLIB_OUT_SIZE ;
 int Z_FINISH ;
 scalar_t__ Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 scalar_t__ close (int) ;
 int deflate (TYPE_2__*,int ) ;
 scalar_t__ deflateEnd (TYPE_2__*) ;
 scalar_t__ errno ;
 scalar_t__ fsync (int) ;
 scalar_t__ fsync_fname (int ,int) ;
 scalar_t__ fsync_parent_path (int ) ;
 int tar_clear_error () ;
 scalar_t__ tar_close (scalar_t__,int ) ;
 TYPE_1__* tar_data ;
 int tar_set_error (char*) ;
 int tar_write_compressed_data (char*,int,int) ;
 size_t write (int,char*,size_t) ;

__attribute__((used)) static bool
tar_finish(void)
{
 char zerobuf[1024];

 tar_clear_error();

 if (tar_data->currentfile)
 {
  if (tar_close(tar_data->currentfile, CLOSE_NORMAL) != 0)
   return 0;
 }


 MemSet(zerobuf, 0, sizeof(zerobuf));
 if (!tar_data->compression)
 {
  errno = 0;
  if (write(tar_data->fd, zerobuf, sizeof(zerobuf)) != sizeof(zerobuf))
  {

   if (errno == 0)
    errno = ENOSPC;
   return 0;
  }
 }
 if (tar_data->sync)
 {
  if (fsync(tar_data->fd) != 0)
   return 0;
 }

 if (close(tar_data->fd) != 0)
  return 0;

 tar_data->fd = -1;

 if (tar_data->sync)
 {
  if (fsync_fname(tar_data->tarfilename, 0) != 0)
   return 0;
  if (fsync_parent_path(tar_data->tarfilename) != 0)
   return 0;
 }

 return 1;
}
