
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_growable_string {char* buf; int alc; scalar_t__ allocation_failure; } ;


 int cplus_demangle_print_callback (int,struct demangle_component*,int ,struct d_growable_string*) ;
 int d_growable_string_callback_adapter ;
 int d_growable_string_init (struct d_growable_string*,int) ;
 int free (char*) ;

char *
cplus_demangle_print (int options, struct demangle_component *dc,
                      int estimate, size_t *palc)
{
  struct d_growable_string dgs;

  d_growable_string_init (&dgs, estimate);

  if (! cplus_demangle_print_callback (options, dc,
                                       d_growable_string_callback_adapter,
                                       &dgs))
    {
      free (dgs.buf);
      *palc = 0;
      return ((void*)0);
    }

  *palc = dgs.allocation_failure ? 1 : dgs.alc;
  return dgs.buf;
}
