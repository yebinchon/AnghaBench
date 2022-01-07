
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLsizei ;
typedef int GLenum ;
typedef int GLcontext ;


 int gl_InterleavedArrays (int *,int ,int ,int const*) ;

void gl_save_InterleavedArrays( GLcontext *ctx,
                                GLenum format, GLsizei stride,
                                const GLvoid *pointer )
{



   gl_InterleavedArrays( ctx, format, stride, pointer );
}
