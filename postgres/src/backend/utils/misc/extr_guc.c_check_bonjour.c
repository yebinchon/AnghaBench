
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int GUC_check_errmsg (char*) ;

__attribute__((used)) static bool
check_bonjour(bool *newval, void **extra, GucSource source)
{

 if (*newval)
 {
  GUC_check_errmsg("Bonjour is not supported by this build");
  return 0;
 }

 return 1;
}
