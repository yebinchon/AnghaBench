
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_context {int hrc; int hdc; int hwnd; } ;
typedef int PIXELFORMATDESCRIPTOR ;


 int ChoosePixelFormat (int ,int *) ;
 int GetDC (int ) ;
 int GetLastError () ;
 int LOG_ERROR ;
 int SetPixelFormat (int ,int,int *) ;
 int blog (int ,char*,...) ;
 int gl_create_dummy_window () ;
 int gl_init_basic_context (int ) ;
 int gl_register_dummy_window_class () ;
 int init_dummy_pixel_format (int *) ;

__attribute__((used)) static bool gl_dummy_context_init(struct dummy_context *dummy)
{
 PIXELFORMATDESCRIPTOR pfd;
 int format_index;

 if (!gl_register_dummy_window_class())
  return 0;

 dummy->hwnd = gl_create_dummy_window();
 if (!dummy->hwnd)
  return 0;

 dummy->hdc = GetDC(dummy->hwnd);

 init_dummy_pixel_format(&pfd);
 format_index = ChoosePixelFormat(dummy->hdc, &pfd);
 if (!format_index) {
  blog(LOG_ERROR, "Dummy ChoosePixelFormat failed, %lu",
       GetLastError());
  return 0;
 }

 if (!SetPixelFormat(dummy->hdc, format_index, &pfd)) {
  blog(LOG_ERROR, "Dummy SetPixelFormat failed, %lu",
       GetLastError());
  return 0;
 }

 dummy->hrc = gl_init_basic_context(dummy->hdc);
 if (!dummy->hrc) {
  blog(LOG_ERROR, "Failed to initialize dummy context");
  return 0;
 }

 return 1;
}
