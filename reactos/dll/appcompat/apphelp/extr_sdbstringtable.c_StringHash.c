
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int ULONG ;
typedef int DWORD ;



__attribute__((used)) static DWORD StringHash(const WCHAR* str)
{
    DWORD hash = 0;
    for (; *str; str++)
    {
        hash = ((65599 * hash) + (ULONG)(*str));
    }
    return hash;
}
