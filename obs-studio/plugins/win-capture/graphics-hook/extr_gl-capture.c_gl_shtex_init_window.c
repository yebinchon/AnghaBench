
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwnd; } ;


 int CreateWindowExW (int ,int ,char*,int,int ,int ,int,int,int *,int *,int ,int *) ;
 int DUMMY_WINDOW_CLASS_NAME ;
 int GetLastError () ;
 int GetModuleHandle (int *) ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_POPUP ;
 TYPE_1__ data ;
 int hlog (char*,int ) ;

__attribute__((used)) static inline bool gl_shtex_init_window(void)
{
 data.hwnd = CreateWindowExW(
  0, DUMMY_WINDOW_CLASS_NAME, L"Dummy GL window, ignore",
  WS_POPUP | WS_CLIPCHILDREN | WS_CLIPSIBLINGS, 0, 0, 2, 2, ((void*)0),
  ((void*)0), GetModuleHandle(((void*)0)), ((void*)0));
 if (!data.hwnd) {
  hlog("gl_shtex_init_window: failed to create window: %d",
       GetLastError());
  return 0;
 }

 return 1;
}
