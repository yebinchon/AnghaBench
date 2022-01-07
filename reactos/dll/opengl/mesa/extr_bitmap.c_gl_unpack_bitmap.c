
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_image {int dummy; } ;
typedef int GLubyte ;
typedef int GLsizei ;
typedef int GLcontext ;


 int GL_BITMAP ;
 int GL_COLOR_INDEX ;
 struct gl_image* gl_unpack_image (int *,int ,int ,int ,int ,int const*) ;

struct gl_image *gl_unpack_bitmap( GLcontext* ctx,
                                   GLsizei width, GLsizei height,
                                   const GLubyte *bitmap )
{
   return gl_unpack_image( ctx, width, height,
                           GL_COLOR_INDEX, GL_BITMAP, bitmap );
}
