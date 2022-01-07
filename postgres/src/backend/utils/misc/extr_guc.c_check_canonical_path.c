
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int canonicalize_path (char*) ;

__attribute__((used)) static bool
check_canonical_path(char **newval, void **extra, GucSource source)
{





 if (*newval)
  canonicalize_path(*newval);
 return 1;
}
