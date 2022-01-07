
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ntfs_file {int buf; int attr; } ;


 int free_attr (int *) ;
 int grub_free (int ) ;

__attribute__((used)) static void
free_file (struct grub_ntfs_file *mft)
{
  free_attr (&mft->attr);
  grub_free (mft->buf);
}
