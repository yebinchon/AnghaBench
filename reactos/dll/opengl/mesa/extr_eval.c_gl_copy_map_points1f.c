
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;


 int components (int ) ;
 scalar_t__ malloc (int) ;

GLfloat *gl_copy_map_points1f( GLenum target,
                               GLint ustride, GLint uorder,
                               const GLfloat *points )
{
   GLfloat *buffer, *p;
   GLuint i, k, size = components(target);

   if (!points || size==0) {
      return ((void*)0);
   }

   buffer = (GLfloat *) malloc(uorder * size * sizeof(GLfloat));

   if(buffer)
      for(i=0, p=buffer; i<uorder; i++, points+=ustride)
 for(k=0; k<size; k++)
   *p++ = points[k];

   return buffer;
}
