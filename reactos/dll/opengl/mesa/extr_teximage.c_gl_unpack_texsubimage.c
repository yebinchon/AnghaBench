
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_image {int dummy; } ;
typedef int GLvoid ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef int GLcontext ;


 scalar_t__ GL_BITMAP ;
 scalar_t__ GL_COLOR_INDEX ;
 scalar_t__ GL_DEPTH_COMPONENT ;
 scalar_t__ GL_STENCIL_INDEX ;
 scalar_t__ gl_sizeof_type (scalar_t__) ;
 struct gl_image* gl_unpack_image (int *,int ,int ,scalar_t__,scalar_t__,int const*) ;

struct gl_image *
gl_unpack_texsubimage( GLcontext *ctx, GLint width, GLint height,
                       GLenum format, GLenum type, const GLvoid *pixels )
{
   if (type==GL_BITMAP && format!=GL_COLOR_INDEX) {
      return ((void*)0);
   }

   if (format==GL_STENCIL_INDEX || format==GL_DEPTH_COMPONENT){
      return ((void*)0);
   }

   if (gl_sizeof_type(type)<=0) {
      return ((void*)0);
   }

   return gl_unpack_image( ctx, width, height, format, type, pixels );
}
