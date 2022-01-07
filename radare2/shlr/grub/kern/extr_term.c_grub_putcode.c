
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_term_output {int (* getxy ) () ;int (* putchar ) (char) ;} ;
typedef char grub_uint32_t ;


 int stub1 () ;
 int stub2 (char) ;
 int stub3 (char) ;

void
grub_putcode (grub_uint32_t code, struct grub_term_output *term)
{
  if (code == '\t' && term->getxy)
    {
      int n;

      n = 8 - ((term->getxy () >> 8) & 7);
      while (n--)
 grub_putcode (' ', term);

      return;
    }

  (term->putchar) (code);
  if (code == '\n')
    (term->putchar) ('\r');
}
