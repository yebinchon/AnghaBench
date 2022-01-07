
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DWORD ;


 int inject_library_safe_obf (int ,int const*,char*,int) ;

__attribute__((used)) static inline int inject_library_safe(DWORD thread_id, const wchar_t *dll)
{
 return inject_library_safe_obf(thread_id, dll, "[bs^fbkmwuKfmfOvI",
           0xEAD293602FCF9778ULL);
}
