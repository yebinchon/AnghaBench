
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 scalar_t__ wcsncmp (int const*,char*,int) ;

__attribute__((used)) static inline BOOL
IsOption(const WCHAR *o)
{
    return (wcsncmp(o, L"--", 2) == 0);
}
