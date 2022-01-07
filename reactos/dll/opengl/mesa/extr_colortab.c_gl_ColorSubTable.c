
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_image {int dummy; } ;
typedef int GLsizei ;
typedef int GLenum ;
typedef int GLcontext ;


 int gl_problem (int *,char*) ;

void gl_ColorSubTable( GLcontext *ctx, GLenum target,
                       GLsizei start, struct gl_image *data )
{

   gl_problem(ctx, "glColorSubTableEXT not implemented");
}
