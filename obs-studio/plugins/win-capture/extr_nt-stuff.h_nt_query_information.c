
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SYSTEM_INFORMATION_CLASS ;
typedef int PVOID ;
typedef int PULONG ;
typedef int NTSTATUS ;
typedef int (* NTQUERYSYSTEMINFORMATIONFUNC ) (int ,int ,int ,int ) ;


 scalar_t__ get_nt_func (char*) ;

__attribute__((used)) static NTSTATUS nt_query_information(SYSTEM_INFORMATION_CLASS info_class,
         PVOID info, ULONG info_len, PULONG ret_len)
{
 static bool initialized = 0;
 static NTQUERYSYSTEMINFORMATIONFUNC func = ((void*)0);

 if (!initialized) {
  func = (NTQUERYSYSTEMINFORMATIONFUNC)get_nt_func(
   "NtQuerySystemInformation");
  initialized = 1;
 }

 if (func)
  return func(info_class, info, info_len, ret_len);
 return (NTSTATUS)-1;
}
