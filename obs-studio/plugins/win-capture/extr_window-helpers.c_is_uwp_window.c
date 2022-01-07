
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int name ;
typedef int HWND ;


 int GetClassNameW (int ,scalar_t__*,int) ;
 scalar_t__ wcscmp (scalar_t__*,char*) ;

bool is_uwp_window(HWND hwnd)
{
 wchar_t name[256];

 name[0] = 0;
 if (!GetClassNameW(hwnd, name, sizeof(name) / sizeof(wchar_t)))
  return 0;

 return wcscmp(name, L"ApplicationFrameWindow") == 0;
}
