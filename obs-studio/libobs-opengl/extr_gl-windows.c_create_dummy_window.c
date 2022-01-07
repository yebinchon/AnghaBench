
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdc; int hwnd; } ;
struct gl_platform {TYPE_1__ window; } ;


 int CreateWindowExA (int ,int ,char*,int ,int ,int ,int,int,int *,int *,int ,int *) ;
 int DUMMY_WNDCLASS ;
 int GetDC (int ) ;
 int GetLastError () ;
 int GetModuleHandleW (int *) ;
 int LOG_ERROR ;
 int WS_POPUP ;
 int blog (int ,char*,int ) ;

__attribute__((used)) static bool create_dummy_window(struct gl_platform *plat)
{
 plat->window.hwnd = CreateWindowExA(0, DUMMY_WNDCLASS,
         "OpenGL Dummy Window", WS_POPUP, 0,
         0, 1, 1, ((void*)0), ((void*)0),
         GetModuleHandleW(((void*)0)), ((void*)0));
 if (!plat->window.hwnd) {
  blog(LOG_ERROR, "Failed to create dummy GL window, %lu",
       GetLastError());
  return 0;
 }

 plat->window.hdc = GetDC(plat->window.hwnd);
 if (!plat->window.hdc) {
  blog(LOG_ERROR, "Failed to get dummy GL window DC (%lu)",
       GetLastError());
  return 0;
 }

 return 1;
}
