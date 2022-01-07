
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_getkey () ;
 int grub_printf (char*) ;
 scalar_t__ grub_term_inputs ;

void
grub_abort (void)
{
  grub_printf ("\nAborted.");


  if (grub_term_inputs)

    {
      grub_printf (" Press any key to exit.");
      grub_getkey ();
    }


}
