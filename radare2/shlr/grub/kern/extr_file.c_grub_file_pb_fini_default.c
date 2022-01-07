
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_printf (char*) ;

__attribute__((used)) static void
grub_file_pb_fini_default (void)
{
  grub_printf ("\n");
}
