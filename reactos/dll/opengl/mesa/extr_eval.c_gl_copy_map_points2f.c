
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

GLfloat *gl_copy_map_points2f( GLenum target,
           GLint ustride, GLint uorder,
           GLint vstride, GLint vorder,
           const GLfloat *points )
{
   GLfloat *buffer, *p;
   GLuint i, j, k, size, dsize, hsize;
   GLint uinc;

   size = components(target);

   if (!points || size==0) {
      return ((void*)0);
   }




   dsize = (uorder == 2 && vorder == 2)? 0 : uorder*vorder;
   hsize = (uorder > vorder ? uorder : vorder)*size;

   if(hsize>dsize)
     buffer = (GLfloat *) malloc((uorder*vorder*size+hsize)*sizeof(GLfloat));
   else
     buffer = (GLfloat *) malloc((uorder*vorder*size+dsize)*sizeof(GLfloat));


   uinc = ustride - vorder*vstride;

   if (buffer)
      for (i=0, p=buffer; i<uorder; i++, points += uinc)
  for (j=0; j<vorder; j++, points += vstride)
     for (k=0; k<size; k++)
        *p++ = points[k];

   return buffer;
}
