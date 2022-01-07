
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;
typedef int GLubyte ;


 int GetModuleHandle (char*) ;
 void* GetProcAddress (int ,int const*) ;
 void* wglGetProcAddress (int const*) ;

__attribute__((used)) static void *wglgpa(const GLubyte *procName)
{
    HMODULE oglmod;
    void *res = wglGetProcAddress(procName);
    if (res)
        return res;
    oglmod = GetModuleHandle(L"opengl32.dll");
    return GetProcAddress(oglmod, procName);
}
