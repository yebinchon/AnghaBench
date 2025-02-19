
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef scalar_t__ GLuint ;


 scalar_t__ GL_ALPHA ;
 int GL_EXTCALL (int ) ;
 int TRACE (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,...) ;
 int debug_argmod (scalar_t__) ;
 int debug_dstmod (scalar_t__) ;
 int debug_mask (scalar_t__) ;
 int debug_op (scalar_t__) ;
 int debug_register (scalar_t__) ;
 int debug_rep (scalar_t__) ;
 int glAlphaFragmentOp2ATI (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int glColorFragmentOp2ATI (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void wrap_op2(const struct wined3d_gl_info *gl_info, GLuint op, GLuint dst, GLuint dstMask, GLuint dstMod,
        GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)
{
    if(dstMask == GL_ALPHA) {
        TRACE("glAlphaFragmentOp2ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s)\n", debug_op(op), debug_register(dst), debug_dstmod(dstMod),
              debug_register(arg1), debug_rep(arg1Rep), debug_argmod(arg1Mod),
              debug_register(arg2), debug_rep(arg2Rep), debug_argmod(arg2Mod));
        GL_EXTCALL(glAlphaFragmentOp2ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod));
    } else {
        TRACE("glColorFragmentOp2ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\n", debug_op(op), debug_register(dst),
              debug_mask(dstMask), debug_dstmod(dstMod),
              debug_register(arg1), debug_rep(arg1Rep), debug_argmod(arg1Mod),
              debug_register(arg2), debug_rep(arg2Rep), debug_argmod(arg2Mod));
        GL_EXTCALL(glColorFragmentOp2ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod));
    }
}
