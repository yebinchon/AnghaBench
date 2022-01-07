
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GucSource ;


 int Assert (int) ;
 scalar_t__ PGC_S_DEFAULT ;
 void* load_tzoffsets (char*) ;

__attribute__((used)) static bool
check_timezone_abbreviations(char **newval, void **extra, GucSource source)
{
 if (*newval == ((void*)0))
 {
  Assert(source == PGC_S_DEFAULT);
  return 1;
 }


 *extra = load_tzoffsets(*newval);


 if (!*extra)
  return 0;

 return 1;
}
