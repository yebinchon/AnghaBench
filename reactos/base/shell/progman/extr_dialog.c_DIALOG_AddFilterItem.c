
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_2__ {int hInstance; } ;
typedef char* LPWSTR ;
typedef int LPCWSTR ;


 TYPE_1__ Globals ;
 int LoadStringW (int ,int ,char*,int ) ;
 int MAX_STRING_LEN ;
 int lstrcpyW (char*,int ) ;
 scalar_t__ wcslen (char*) ;

__attribute__((used)) static
VOID
DIALOG_AddFilterItem(LPWSTR* p, UINT ids, LPCWSTR filter)
{
    LoadStringW(Globals.hInstance, ids, *p, MAX_STRING_LEN);
    *p += wcslen(*p) + 1;
    lstrcpyW(*p, filter);
    *p += wcslen(*p) + 1;
    **p = '\0';
}
