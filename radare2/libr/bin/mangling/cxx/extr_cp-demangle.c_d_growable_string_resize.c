
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_growable_string {int allocation_failure; int alc; char* buf; scalar_t__ len; } ;


 int free (char*) ;
 scalar_t__ realloc (char*,size_t) ;

__attribute__((used)) static inline void
d_growable_string_resize (struct d_growable_string *dgs, size_t need)
{
  size_t newalc;
  char *newbuf;

  if (dgs->allocation_failure)
    return;




  newalc = dgs->alc > 0 ? dgs->alc : 2;
  while (newalc < need)
    newalc <<= 1;

  newbuf = (char *) realloc (dgs->buf, newalc);
  if (newbuf == ((void*)0))
    {
      free (dgs->buf);
      dgs->buf = ((void*)0);
      dgs->len = 0;
      dgs->alc = 0;
      dgs->allocation_failure = 1;
      return;
    }
  dgs->buf = newbuf;
  dgs->alc = newalc;
}
