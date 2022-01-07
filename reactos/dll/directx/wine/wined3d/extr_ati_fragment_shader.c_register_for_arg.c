
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef int DWORD ;


 int ARG_UNUSED ;
 int ATIFS_CONST_STAGE (unsigned int) ;
 int ATIFS_CONST_TFACTOR ;
 int FIXME (char*,int) ;
 int GL_ALPHA ;
 int GL_COMP_BIT_ATI ;
 int GL_NONE ;
 int GL_PRIMARY_COLOR ;
 int GL_REG_0_ATI ;
 int GL_SECONDARY_INTERPOLATOR_ATI ;
 int GL_ZERO ;
 int WINED3DTA_ALPHAREPLICATE ;
 int WINED3DTA_COMPLEMENT ;



 int WINED3DTA_SELECTMASK ;





__attribute__((used)) static GLuint register_for_arg(DWORD arg, const struct wined3d_gl_info *gl_info,
        unsigned int stage, GLuint *mod, GLuint *rep, GLuint tmparg)
{
    GLenum ret;

    if(mod) *mod = GL_NONE;
    if(arg == ARG_UNUSED)
    {
        if (rep) *rep = GL_NONE;
        return -1;
    }

    switch(arg & WINED3DTA_SELECTMASK) {
        case 132:
            ret = GL_PRIMARY_COLOR;
            break;

        case 133:





            ret = stage ? GL_REG_0_ATI : GL_PRIMARY_COLOR;
            break;

        case 129:
            ret = GL_REG_0_ATI + stage;
            break;

        case 128:
            ret = ATIFS_CONST_TFACTOR;
            break;

        case 131:
            ret = GL_SECONDARY_INTERPOLATOR_ATI;
            break;

        case 130:
            ret = tmparg;
            break;

        case 134:
            ret = ATIFS_CONST_STAGE(stage);
            break;

        default:
            FIXME("Unknown source argument %d\n", arg);
            ret = GL_ZERO;
    }

    if(arg & WINED3DTA_COMPLEMENT) {
        if(mod) *mod |= GL_COMP_BIT_ATI;
    }
    if(arg & WINED3DTA_ALPHAREPLICATE) {
        if(rep) *rep = GL_ALPHA;
    } else {
        if(rep) *rep = GL_NONE;
    }
    return ret;
}
