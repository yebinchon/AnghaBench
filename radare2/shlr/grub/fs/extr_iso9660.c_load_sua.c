
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_iso9660_data {int disk; } ;


 scalar_t__ grub_disk_read (int ,int,int,int,char*) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;

__attribute__((used)) static char *
load_sua (struct grub_iso9660_data *data, int sua_block, int sua_pos,
   int sua_size)
{
  char *sua;

  sua = grub_malloc (sua_size);
  if (!sua)
    return 0;

  if (grub_disk_read (data->disk, sua_block, sua_pos, sua_size, sua))
    {
      grub_free (sua);
      return 0;
    }

  return sua;
}
