
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HGLRC ;
typedef int HDC ;


 int GetLastError () ;
 int LOG_ERROR ;
 int blog (int ,char*,int ) ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static inline bool wgl_make_current(HDC hdc, HGLRC hglrc)
{
 bool success = wglMakeCurrent(hdc, hglrc);
 if (!success)
  blog(LOG_ERROR,
       "wglMakeCurrent failed, GetLastError "
       "returned %lu",
       GetLastError());

 return success;
}
