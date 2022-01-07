
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int GUC_check_errdetail (char*) ;
 int NLocBuffer ;

__attribute__((used)) static bool
check_temp_buffers(int *newval, void **extra, GucSource source)
{



 if (NLocBuffer && NLocBuffer != *newval)
 {
  GUC_check_errdetail("\"temp_buffers\" cannot be changed after any temporary tables have been accessed in the session.");
  return 0;
 }
 return 1;
}
