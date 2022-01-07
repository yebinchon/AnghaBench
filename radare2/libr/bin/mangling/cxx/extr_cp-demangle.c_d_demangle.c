
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_growable_string {char* buf; int alc; scalar_t__ allocation_failure; } ;


 int d_demangle_callback (char const*,int,int ,struct d_growable_string*) ;
 int d_growable_string_callback_adapter ;
 int d_growable_string_init (struct d_growable_string*,int ) ;
 int free (char*) ;

__attribute__((used)) static char *
d_demangle (const char *mangled, int options, size_t *palc)
{
  struct d_growable_string dgs;
  int status;

  d_growable_string_init (&dgs, 0);

  status = d_demangle_callback (mangled, options,
                                d_growable_string_callback_adapter, &dgs);
  if (status == 0)
    {
      free (dgs.buf);
      *palc = 0;
      return ((void*)0);
    }

  *palc = dgs.allocation_failure ? 1 : dgs.alc;
  return dgs.buf;
}
