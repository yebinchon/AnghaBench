
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct hook_info {int dummy; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int CreateFileMappingW (int ,int *,int ,int ,int,int *) ;
 int INVALID_HANDLE_VALUE ;
 int PAGE_READWRITE ;
 int SHMEM_HOOK_INFO ;
 int _snwprintf (int *,int,char*,int ,int ) ;

__attribute__((used)) static inline HANDLE create_hook_info(DWORD id)
{
 wchar_t new_name[64];
 _snwprintf(new_name, 64, L"%s%lu", SHMEM_HOOK_INFO, id);

 return CreateFileMappingW(INVALID_HANDLE_VALUE, ((void*)0), PAGE_READWRITE, 0,
      sizeof(struct hook_info), new_name);
}
