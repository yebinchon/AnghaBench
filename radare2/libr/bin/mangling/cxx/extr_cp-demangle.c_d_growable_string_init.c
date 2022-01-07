
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_growable_string {scalar_t__ allocation_failure; scalar_t__ alc; scalar_t__ len; int * buf; } ;


 int d_growable_string_resize (struct d_growable_string*,size_t) ;

__attribute__((used)) static void
d_growable_string_init (struct d_growable_string *dgs, size_t estimate)
{
  dgs->buf = ((void*)0);
  dgs->len = 0;
  dgs->alc = 0;
  dgs->allocation_failure = 0;

  if (estimate > 0)
    d_growable_string_resize (dgs, estimate);
}
