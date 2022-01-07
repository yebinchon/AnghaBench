
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_off_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {int size; } ;



__attribute__((used)) static inline grub_off_t
grub_file_size (const grub_file_t file)
{
  return file->size;
}
