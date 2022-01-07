
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;
typedef int DWORD ;


 int _snwprintf (int *,int,char*,int const*,int ) ;
 int create_mutex (int *) ;

__attribute__((used)) static inline HANDLE create_mutex_plus_id(const wchar_t *name, DWORD id)
{
 wchar_t new_name[64];
 _snwprintf(new_name, 64, L"%s%lu", name, id);
 return create_mutex(new_name);
}
