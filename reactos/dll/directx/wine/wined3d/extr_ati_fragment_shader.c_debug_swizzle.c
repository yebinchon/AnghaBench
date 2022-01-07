
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;







__attribute__((used)) static const char *debug_swizzle(GLuint swizzle) {
    switch(swizzle) {
        case 129: return "GL_SWIZZLE_STR_ATI";
        case 131: return "GL_SWIZZLE_STQ_ATI";
        case 128: return "GL_SWIZZLE_STR_DR_ATI";
        case 130: return "GL_SWIZZLE_STQ_DQ_ATI";
        default: return "unknown swizzle";
    }
}
