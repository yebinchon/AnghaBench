
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct head {scalar_t__ magic; scalar_t__ namesize; scalar_t__ filesize_1; scalar_t__ filesize_2; } ;


 scalar_t__ MAGIC_BCPIO ;
 void* grub_swap_bytes16 (scalar_t__) ;

__attribute__((used)) static void
grub_cpio_convert_header (struct head *head)
{
  if (head->magic != MAGIC_BCPIO)
    {
      head->magic = grub_swap_bytes16 (head->magic);
      head->namesize = grub_swap_bytes16 (head->namesize);
      head->filesize_1 = grub_swap_bytes16 (head->filesize_1);
      head->filesize_2 = grub_swap_bytes16 (head->filesize_2);
    }
}
