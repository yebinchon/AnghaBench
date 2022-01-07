
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PROC ;
typedef int LPCSTR ;


 int WARN (char*,int ) ;
 int _mesa_ColorSubTableEXT ;
 int _mesa_ColorTableEXT ;
 int _mesa_GetColorTableEXT ;
 int _mesa_GetColorTableParameterfvEXT ;
 int _mesa_GetColorTableParameterivEXT ;
 int _swimpl_AddSwapHintRectWIN ;
 scalar_t__ strcmp (int ,char*) ;

PROC sw_GetProcAddress(LPCSTR name)
{

    if (strcmp(name, "glColorTableEXT") == 0)
        return (PROC)_mesa_ColorTableEXT;
    if (strcmp(name, "glColorSubTableEXT") == 0)
        return (PROC)_mesa_ColorSubTableEXT;
    if (strcmp(name, "glColorGetTableEXT") == 0)
        return (PROC)_mesa_GetColorTableEXT;
    if (strcmp(name, "glGetColorTableParameterivEXT") == 0)
        return (PROC)_mesa_GetColorTableParameterivEXT;
    if (strcmp(name, "glGetColorTableParameterfvEXT") == 0)
        return (PROC)_mesa_GetColorTableParameterfvEXT;
    if (strcmp(name, "glAddSwapHintRectWIN") == 0)
        return (PROC)_swimpl_AddSwapHintRectWIN;

    WARN("Asking for proc address %s, returning NULL.\n", name);
    return ((void*)0);
}
