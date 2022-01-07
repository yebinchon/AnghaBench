
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef scalar_t__ DWORD ;


 int * FindWindowEx (int *,int *,int *,int *) ;
 int GetWindowThreadProcessId (int *,scalar_t__*) ;

HWND get_uwp_actual_window(HWND parent)
{
 DWORD parent_id = 0;
 HWND child;

 GetWindowThreadProcessId(parent, &parent_id);
 child = FindWindowEx(parent, ((void*)0), ((void*)0), ((void*)0));

 while (child) {
  DWORD child_id = 0;
  GetWindowThreadProcessId(child, &child_id);

  if (child_id != parent_id)
   return child;

  child = FindWindowEx(parent, child, ((void*)0), ((void*)0));
 }

 return ((void*)0);
}
