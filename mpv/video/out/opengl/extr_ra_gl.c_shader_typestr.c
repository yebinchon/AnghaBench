
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;





 int abort () ;

__attribute__((used)) static const char *shader_typestr(GLenum type)
{
    switch (type) {
    case 128: return "vertex";
    case 129: return "fragment";
    case 130: return "compute";
    default: abort();
    }
}
