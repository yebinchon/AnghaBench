
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wc ;
struct TYPE_4__ {int lpszClassName; int lpfnWndProc; int hInstance; int style; } ;
typedef TYPE_1__ WNDCLASSA ;


 int CS_OWNDC ;
 int DefWindowProc ;
 int GetModuleHandle (int *) ;
 int LOG_ERROR ;
 int RegisterClassA (TYPE_1__*) ;
 int blog (int ,char*) ;
 int dummy_window_class ;
 int memset (TYPE_1__*,int ,int) ;
 int registered_dummy_window_class ;

__attribute__((used)) static bool gl_register_dummy_window_class(void)
{
 WNDCLASSA wc;
 if (registered_dummy_window_class)
  return 1;

 memset(&wc, 0, sizeof(wc));
 wc.style = CS_OWNDC;
 wc.hInstance = GetModuleHandle(((void*)0));
 wc.lpfnWndProc = DefWindowProc;
 wc.lpszClassName = dummy_window_class;

 if (!RegisterClassA(&wc)) {
  blog(LOG_ERROR, "Could not create dummy window class");
  return 0;
 }

 registered_dummy_window_class = 1;
 return 1;
}
