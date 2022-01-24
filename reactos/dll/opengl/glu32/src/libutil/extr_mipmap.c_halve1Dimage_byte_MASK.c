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
typedef  int GLbyte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(GLint components, GLuint width, GLuint height,
			      const GLbyte *dataIn, GLbyte *dataOut,
			      GLint element_size,GLint ysize, GLint group_size)
{
   GLint halfWidth= width / 2;
   GLint halfHeight= height / 2;
   const char *src= (const char *) dataIn;
   GLbyte *dest= dataOut;
   int jj;

   FUNC0(width == 1 || height == 1); /* must be 1D */
   FUNC0(width != height);	/* can't be square */

   if (height == 1) {		/* 1 row */
      FUNC0(width != 1);	/* widthxheight can't be 1x1 */
      halfHeight= 1;

      for (jj= 0; jj< halfWidth; jj++) {
	 int kk;
	 for (kk= 0; kk< components; kk++) {
	    *dest= (*(const GLbyte*)src + *(const GLbyte*)(src+group_size)) / 2;

	    src+= element_size;
	    dest++;
	 }
	 src+= group_size;	/* skip to next 2 */
      }
      {
	 int padBytes= ysize - (width*group_size);
	 src+= padBytes;	/* for assertion only */
      }
   }
   else if (width == 1) {	/* 1 column */
      int padBytes= ysize - (width * group_size);
      FUNC0(height != 1);	/* widthxheight can't be 1x1 */
      halfWidth= 1;
      /* one vertical column with possible pad bytes per row */
      /* average two at a time */

      for (jj= 0; jj< halfHeight; jj++) {
	 int kk;
	 for (kk= 0; kk< components; kk++) {
	    *dest= (*(const GLbyte*)src + *(const GLbyte*)(src+ysize)) / 2;

	    src+= element_size;
	    dest++;
	 }
	 src+= padBytes; /* add pad bytes, if any, to get to end to row */
	 src+= ysize;
      }

      FUNC0(src == &((const char *)dataIn)[ysize*height]);
   }

   FUNC0((char *)dest == &((char *)dataOut)
	  [components * element_size * halfWidth * halfHeight]);
}