
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_uint64_t ;
typedef TYPE_1__* grub_partition_t ;
struct TYPE_3__ {int len; } ;



__attribute__((used)) static inline grub_uint64_t
grub_partition_get_len (const grub_partition_t p)
{
  return p->len;
}
