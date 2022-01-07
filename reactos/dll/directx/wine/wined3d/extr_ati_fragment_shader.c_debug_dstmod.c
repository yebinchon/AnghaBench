
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
__attribute__((used)) static const char *debug_dstmod(GLuint mod) {
    switch(mod) {
        case 130: return "GL_NONE";
        case 135: return "GL_2X_BIT_ATI";
        case 134: return "GL_4X_BIT_ATI";
        case 133: return "GL_8X_BIT_ATI";
        case 131: return "GL_HALF_BIT_ATI";
        case 129: return "GL_QUARTER_BIT_ATI";
        case 132: return "GL_EIGHTH_BIT_ATI";
        case 128: return "GL_SATURATE_BIT_ATI";
        default: return "Unexpected modifier\n";
    }
}
