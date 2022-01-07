
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
__attribute__((used)) static const char *gl_error_to_string(GLenum error)
{
    switch (error) {
    case 132: return "INVALID_ENUM";
    case 129: return "INVALID_VALUE";
    case 130: return "INVALID_OPERATION";
    case 131: return "INVALID_FRAMEBUFFER_OPERATION";
    case 128: return "OUT_OF_MEMORY";
    default: return "unknown";
    }
}
