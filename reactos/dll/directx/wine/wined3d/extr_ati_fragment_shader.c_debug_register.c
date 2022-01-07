
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
__attribute__((used)) static const char *debug_register(GLuint reg) {
    switch(reg) {
        case 135: return "GL_REG_0_ATI";
        case 134: return "GL_REG_1_ATI";
        case 133: return "GL_REG_2_ATI";
        case 132: return "GL_REG_3_ATI";
        case 131: return "GL_REG_4_ATI";
        case 130: return "GL_REG_5_ATI";

        case 145: return "GL_CON_0_ATI";
        case 144: return "GL_CON_1_ATI";
        case 143: return "GL_CON_2_ATI";
        case 142: return "GL_CON_3_ATI";
        case 141: return "GL_CON_4_ATI";
        case 140: return "GL_CON_5_ATI";
        case 139: return "GL_CON_6_ATI";
        case 138: return "GL_CON_7_ATI";

        case 128: return "GL_ZERO";
        case 137: return "GL_ONE";
        case 136: return "GL_PRIMARY_COLOR";
        case 129: return "GL_SECONDARY_INTERPOLATOR_ATI";

        default: return "Unknown register\n";
    }
}
