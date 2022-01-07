
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ntfs_file {int dummy; } ;
struct grub_ntfs_attr {int flags; } ;


 int AF_ALST ;
 int GRUB_ERR_NONE ;
 char* find_attr (struct grub_ntfs_attr*,unsigned char) ;
 int free_attr (struct grub_ntfs_attr*) ;
 int grub_errno ;
 int init_attr (struct grub_ntfs_attr*,struct grub_ntfs_file*) ;

__attribute__((used)) static char *
locate_attr (struct grub_ntfs_attr *at, struct grub_ntfs_file *mft,
      unsigned char attr)
{
  char *pa;

  init_attr (at, mft);
  if ((pa = find_attr (at, attr)) == ((void*)0))
    return ((void*)0);
  if ((at->flags & AF_ALST) == 0)
    {
      while (1)
 {
   if ((pa = find_attr (at, attr)) == ((void*)0))
     break;
   if (at->flags & AF_ALST)
     return pa;
 }
      grub_errno = GRUB_ERR_NONE;
      free_attr (at);
      init_attr (at, mft);
      pa = find_attr (at, attr);
    }
  return pa;
}
