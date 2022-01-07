
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GLenum ;
typedef int DWORD ;


 int FIXME (char*,...) ;
 int GL_CONSTANT_COLOR0_NV ;
 int GL_CONSTANT_COLOR1_NV ;
 int GL_PRIMARY_COLOR_NV ;
 int GL_SECONDARY_COLOR_NV ;
 int GL_SPARE0_NV ;
 int GL_SPARE1_NV ;
 int GL_TEXTURE ;
 int GL_TEXTURE0_ARB ;
__attribute__((used)) static GLenum d3dta_to_combiner_input(DWORD d3dta, DWORD stage, INT texture_idx) {
    switch (d3dta) {
        case 132:
            return GL_PRIMARY_COLOR_NV;

        case 133:
            if (stage) return GL_SPARE0_NV;
            else return GL_PRIMARY_COLOR_NV;

        case 129:
            if (texture_idx > -1) return GL_TEXTURE0_ARB + texture_idx;
            else return GL_PRIMARY_COLOR_NV;

        case 128:
            return GL_CONSTANT_COLOR0_NV;

        case 131:
            return GL_SECONDARY_COLOR_NV;

        case 130:
            return GL_SPARE1_NV;

        case 134:

            FIXME("WINED3DTA_CONSTANT, not properly supported.\n");
            return GL_CONSTANT_COLOR1_NV;

        default:
            FIXME("Unrecognized texture arg %#x\n", d3dta);
            return GL_TEXTURE;
    }
}
