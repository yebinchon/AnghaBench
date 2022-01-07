
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int CreateWindowExA (int ,int ,char*,int ,int ,int ,int,int,int *,int *,int ,int *) ;
 int GetModuleHandle (int *) ;
 int LOG_ERROR ;
 int WS_POPUP ;
 int blog (int ,char*) ;
 int dummy_window_class ;

__attribute__((used)) static inline HWND gl_create_dummy_window(void)
{
 HWND hwnd = CreateWindowExA(0, dummy_window_class, "Dummy GL Window",
        WS_POPUP, 0, 0, 2, 2, ((void*)0), ((void*)0),
        GetModuleHandle(((void*)0)), ((void*)0));
 if (!hwnd)
  blog(LOG_ERROR, "Could not create dummy context window");

 return hwnd;
}
