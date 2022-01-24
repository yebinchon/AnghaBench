#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int GLuint ;
typedef  int GLint ;
typedef  scalar_t__ GLfloat ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLdouble ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

GLfloat *FUNC2(GLenum target,
                              GLint ustride, GLint uorder,
                              GLint vstride, GLint vorder,
                              const GLdouble *points )
{
   GLfloat *buffer, *p;
   GLuint i, j, k, size, hsize, dsize;
   GLint uinc;

   size = FUNC0(target);

   if (!points || size==0) {
      return NULL;
   }

   /* max(uorder, vorder) additional points are used in      */
   /* horner evaluation and uorder*vorder additional */
   /* values are needed for de Casteljau                     */
   dsize = (uorder == 2 && vorder == 2)? 0 : uorder*vorder;
   hsize = (uorder > vorder ? uorder : vorder)*size;

   if(hsize>dsize)
     buffer = (GLfloat *) FUNC1((uorder*vorder*size+hsize)*sizeof(GLfloat));
   else
     buffer = (GLfloat *) FUNC1((uorder*vorder*size+dsize)*sizeof(GLfloat));

   /* compute the increment value for the u-loop */
   uinc = ustride - vorder*vstride;

   if (buffer) 
      for (i=0, p=buffer; i<uorder; i++, points += uinc)
	 for (j=0; j<vorder; j++, points += vstride)
	    for (k=0; k<size; k++)
	       *p++ = (GLfloat) points[k];

   return buffer;
}