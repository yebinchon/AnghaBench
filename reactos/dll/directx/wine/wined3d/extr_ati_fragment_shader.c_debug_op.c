
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
__attribute__((used)) static const char *debug_op(GLuint op) {
    switch(op) {
        case 130: return "GL_MOV_ATI";
        case 138: return "GL_ADD_ATI";
        case 129: return "GL_MUL_ATI";
        case 128: return "GL_SUB_ATI";
        case 134: return "GL_DOT3_ATI";
        case 133: return "GL_DOT4_ATI";
        case 131: return "GL_MAD_ATI";
        case 132: return "GL_LERP_ATI";
        case 136: return "GL_CND_ATI";
        case 137: return "GL_CND0_ATI";
        case 135: return "GL_DOT2_ADD_ATI";
        default: return "unexpected op";
    }
}
