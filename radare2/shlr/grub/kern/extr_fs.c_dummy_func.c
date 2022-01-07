
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_dirhook_info {int dummy; } ;



__attribute__((used)) static int
dummy_func (const char *filename ,
     const struct grub_dirhook_info *info ,
     void *closure )
{
  return 1;
}
