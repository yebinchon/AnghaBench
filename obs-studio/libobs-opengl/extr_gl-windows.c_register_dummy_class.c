
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WNDPROC ;
struct TYPE_3__ {int lpszClassName; scalar_t__ lpfnWndProc; int hInstance; int style; int member_0; } ;
typedef TYPE_1__ WNDCLASSA ;


 int CS_OWNDC ;
 int DUMMY_WNDCLASS ;
 scalar_t__ DefWindowProcA ;
 int GetLastError () ;
 int GetModuleHandleW (int *) ;
 int LOG_ERROR ;
 int RegisterClassA (TYPE_1__*) ;
 int blog (int ,char*,int ) ;

__attribute__((used)) static bool register_dummy_class(void)
{
 static bool created = 0;

 WNDCLASSA wc = {0};
 wc.style = CS_OWNDC;
 wc.hInstance = GetModuleHandleW(((void*)0));
 wc.lpfnWndProc = (WNDPROC)DefWindowProcA;
 wc.lpszClassName = DUMMY_WNDCLASS;

 if (created)
  return 1;

 if (!RegisterClassA(&wc)) {
  blog(LOG_ERROR, "Failed to register dummy GL window class, %lu",
       GetLastError());
  return 0;
 }

 created = 1;
 return 1;
}
