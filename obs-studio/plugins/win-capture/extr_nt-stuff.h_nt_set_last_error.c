
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* RTLNTSTATUSTODOSERRORFUNC ) (int ) ;
typedef int NTSTATUS ;


 int SetLastError (int ) ;
 scalar_t__ get_nt_func (char*) ;

__attribute__((used)) static void nt_set_last_error(NTSTATUS status)
{
 static bool initialized = 0;
 static RTLNTSTATUSTODOSERRORFUNC func = ((void*)0);

 if (!initialized) {
  func = (RTLNTSTATUSTODOSERRORFUNC)get_nt_func(
   "RtlNtStatusToDosError");
  initialized = 1;
 }

 if (func)
  SetLastError(func(status));
}
