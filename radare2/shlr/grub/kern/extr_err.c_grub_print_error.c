
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GRUB_ERR_NONE ;
 int _ (char*) ;
 int grub_err_printf (char*,...) ;
 int grub_errmsg ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error_pop () ;
 scalar_t__ grub_error_stack_assert ;

void
grub_print_error (void)
{


  do
    {
      if (grub_errno != GRUB_ERR_NONE)
        grub_err_printf (_("error: %s.\n"), grub_errmsg);
    }
  while (grub_error_pop ());


  if (grub_error_stack_assert)
    {
      grub_err_printf ("assert: error stack overflow detected!\n");
      grub_error_stack_assert = 0;
    }
}
