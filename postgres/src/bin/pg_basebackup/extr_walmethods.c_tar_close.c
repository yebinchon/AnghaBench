
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
typedef int * Walfile ;
typedef scalar_t__ WalCloseMethod ;
struct TYPE_8__ {scalar_t__ ofs_start; size_t pad_to_size; size_t currpos; struct TYPE_8__* pathname; int * header; } ;
typedef TYPE_2__ TarMethodFile ;
struct TYPE_9__ {TYPE_1__* currentfile; int fd; scalar_t__ compression; int zp; } ;
struct TYPE_7__ {int * header; } ;


 int Assert (int ) ;
 scalar_t__ CLOSE_NORMAL ;
 scalar_t__ CLOSE_UNLINK ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSPC ;
 int MemSet (char*,int ,int) ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ Z_OK ;
 scalar_t__ deflateParams (int ,scalar_t__,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ ftruncate (int ,scalar_t__) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int pg_free (TYPE_2__*) ;
 int print_tar_number (int *,int,int) ;
 int strlcpy (int *,TYPE_2__*,int) ;
 int tarChecksum (int *) ;
 int tar_clear_error () ;
 TYPE_4__* tar_data ;
 int tar_get_current_pos (int *) ;
 int tar_set_error (char*) ;
 scalar_t__ tar_sync (int *) ;
 int tar_write (int *,char*,int) ;
 int tar_write_compressed_data (int *,int,int) ;
 int tar_write_padding_data (TYPE_2__*,size_t) ;
 int write (int ,int *,int) ;

__attribute__((used)) static int
tar_close(Walfile f, WalCloseMethod method)
{
 ssize_t filesize;
 int padding;
 TarMethodFile *tf = (TarMethodFile *) f;

 Assert(f != ((void*)0));
 tar_clear_error();

 if (method == CLOSE_UNLINK)
 {
  if (tar_data->compression)
  {
   tar_set_error("unlink not supported with compression");
   return -1;
  }






  if (ftruncate(tar_data->fd, tf->ofs_start) != 0)
   return -1;

  pg_free(tf->pathname);
  pg_free(tf);
  tar_data->currentfile = ((void*)0);

  return 0;
 }






 if (tf->pad_to_size)
 {
  if (tar_data->compression)
  {




   size_t sizeleft = tf->pad_to_size - tf->currpos;

   if (sizeleft)
   {
    if (!tar_write_padding_data(tf, sizeleft))
     return -1;
   }
  }
  else
  {




   tf->currpos = tf->pad_to_size;
  }
 }





 filesize = tar_get_current_pos(f);
 padding = ((filesize + 511) & ~511) - filesize;
 if (padding)
 {
  char zerobuf[512];

  MemSet(zerobuf, 0, padding);
  if (tar_write(f, zerobuf, padding) != padding)
   return -1;
 }
 print_tar_number(&(tf->header[124]), 12, filesize);

 if (method == CLOSE_NORMAL)





  strlcpy(&(tf->header[0]), tf->pathname, 100);

 print_tar_number(&(tf->header[148]), 8, tarChecksum(((TarMethodFile *) f)->header));
 if (lseek(tar_data->fd, tf->ofs_start, SEEK_SET) != ((TarMethodFile *) f)->ofs_start)
  return -1;
 if (!tar_data->compression)
 {
  errno = 0;
  if (write(tar_data->fd, tf->header, 512) != 512)
  {

   if (errno == 0)
    errno = ENOSPC;
   return -1;
  }
 }
 if (lseek(tar_data->fd, 0, SEEK_END) < 0)
  return -1;


 if (tar_sync(f) < 0)
  exit(1);


 pg_free(tf->pathname);
 pg_free(tf);
 tar_data->currentfile = ((void*)0);

 return 0;
}
