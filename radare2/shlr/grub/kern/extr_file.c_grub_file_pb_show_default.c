
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_printf (char*) ;
 int grub_refresh () ;

__attribute__((used)) static void
grub_file_pb_show_default (int num ,
      int total )
{
  grub_printf (".");
  grub_refresh ();
}
