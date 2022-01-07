
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HGLRC ;
typedef int HDC ;


 int GetLastError () ;
 int LOG_ERROR ;






 int blog (int ,char*,int ) ;
 int * wglCreateContextAttribsARB (int ,int ,int const*) ;
 int wglDeleteContext (int *) ;
 int wgl_make_current (int ,int *) ;

__attribute__((used)) static inline HGLRC gl_init_context(HDC hdc)
{
 static const int attribs[] = {




  128,
  133,
  130,
  3,
  129,
  3,
  0,
  0};

 HGLRC hglrc = wglCreateContextAttribsARB(hdc, 0, attribs);
 if (!hglrc) {
  blog(LOG_ERROR,
       "wglCreateContextAttribsARB failed, "
       "%lu",
       GetLastError());
  return ((void*)0);
 }

 if (!wgl_make_current(hdc, hglrc)) {
  wglDeleteContext(hglrc);
  return ((void*)0);
 }

 return hglrc;
}
