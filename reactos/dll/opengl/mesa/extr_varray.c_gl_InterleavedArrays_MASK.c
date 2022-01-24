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
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int GLsizei ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;
typedef  scalar_t__ GLboolean ;

/* Variables and functions */
#define  GL_C3F_V3F 141 
#define  GL_C4F_N3F_V3F 140 
#define  GL_C4UB_V2F 139 
#define  GL_C4UB_V3F 138 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_EDGE_FLAG_ARRAY ; 
 scalar_t__ GL_FALSE ; 
 int GL_FLOAT ; 
 int /*<<< orphan*/  GL_INDEX_ARRAY ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
#define  GL_N3F_V3F 137 
 int /*<<< orphan*/  GL_NORMAL_ARRAY ; 
#define  GL_T2F_C3F_V3F 136 
#define  GL_T2F_C4F_N3F_V3F 135 
#define  GL_T2F_C4UB_V3F 134 
#define  GL_T2F_N3F_V3F 133 
#define  GL_T2F_V3F 132 
#define  GL_T4F_C4F_N3F_V4F 131 
#define  GL_T4F_V4F 130 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 scalar_t__ GL_TRUE ; 
 int GL_UNSIGNED_BYTE ; 
#define  GL_V2F 129 
#define  GL_V3F 128 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC7( GLcontext *ctx,
                           GLenum format, GLsizei stride,
                           const GLvoid *pointer )
{
   GLboolean tflag, cflag, nflag;  /* enable/disable flags */
   GLint tcomps, ccomps, vcomps;   /* components per texcoord, color, vertex */
   GLenum ctype;                   /* color type */
   GLint coffset, noffset, voffset;/* color, normal, vertex offsets */
   GLint defstride;                /* default stride */
   GLint c, f;

   f = sizeof(GLfloat);
   c = f * ((4*sizeof(GLubyte) + (f-1)) / f);

   if (stride<0) {
      FUNC6( ctx, GL_INVALID_VALUE, "glInterleavedArrays(stride)" );
      return;
   }

   switch (format) {
      case GL_V2F:
         tflag = GL_FALSE;  cflag = GL_FALSE;  nflag = GL_FALSE;
         tcomps = 0;  ccomps = 0;  vcomps = 2;
         voffset = 0;
         defstride = 2*f;
         break;
      case GL_V3F:
         tflag = GL_FALSE;  cflag = GL_FALSE;  nflag = GL_FALSE;
         tcomps = 0;  ccomps = 0;  vcomps = 3;
         voffset = 0;
         defstride = 3*f;
         break;
      case GL_C4UB_V2F:
         tflag = GL_FALSE;  cflag = GL_TRUE;  nflag = GL_FALSE;
         tcomps = 0;  ccomps = 4;  vcomps = 2;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 0;
         voffset = c;
         defstride = c + 2*f;
         break;
      case GL_C4UB_V3F:
         tflag = GL_FALSE;  cflag = GL_TRUE;  nflag = GL_FALSE;
         tcomps = 0;  ccomps = 4;  vcomps = 3;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 0;
         voffset = c;
         defstride = c + 3*f;
         break;
      case GL_C3F_V3F:
         tflag = GL_FALSE;  cflag = GL_TRUE;  nflag = GL_FALSE;
         tcomps = 0;  ccomps = 3;  vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 0;
         voffset = 3*f;
         defstride = 6*f;
         break;
      case GL_N3F_V3F:
         tflag = GL_FALSE;  cflag = GL_FALSE;  nflag = GL_TRUE;
         tcomps = 0;  ccomps = 0;  vcomps = 3;
         noffset = 0;
         voffset = 3*f;
         defstride = 6*f;
         break;
      case GL_C4F_N3F_V3F:
         tflag = GL_FALSE;  cflag = GL_TRUE;  nflag = GL_TRUE;
         tcomps = 0;  ccomps = 4;  vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 0;
         noffset = 4*f;
         voffset = 7*f;
         defstride = 10*f;
         break;
      case GL_T2F_V3F:
         tflag = GL_TRUE;  cflag = GL_FALSE;  nflag = GL_FALSE;
         tcomps = 2;  ccomps = 0;  vcomps = 3;
         voffset = 2*f;
         defstride = 5*f;
         break;
      case GL_T4F_V4F:
         tflag = GL_TRUE;  cflag = GL_FALSE;  nflag = GL_FALSE;
         tcomps = 4;  ccomps = 0;  vcomps = 4;
         voffset = 4*f;
         defstride = 8*f;
         break;
      case GL_T2F_C4UB_V3F:
         tflag = GL_TRUE;  cflag = GL_TRUE;  nflag = GL_FALSE;
         tcomps = 2;  ccomps = 4;  vcomps = 3;
         ctype = GL_UNSIGNED_BYTE;
         coffset = 2*f;
         voffset = c+2*f;
         defstride = c+5*f;
         break;
      case GL_T2F_C3F_V3F:
         tflag = GL_TRUE;  cflag = GL_TRUE;  nflag = GL_FALSE;
         tcomps = 2;  ccomps = 3;  vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 2*f;
         voffset = 5*f;
         defstride = 8*f;
         break;
      case GL_T2F_N3F_V3F:
         tflag = GL_TRUE;  cflag = GL_FALSE;  nflag = GL_TRUE;
         tcomps = 2;  ccomps = 0;  vcomps = 3;
         noffset = 2*f;
         voffset = 5*f;
         defstride = 8*f;
         break;
      case GL_T2F_C4F_N3F_V3F:
         tflag = GL_TRUE;  cflag = GL_TRUE;  nflag = GL_TRUE;
         tcomps = 2;  ccomps = 4;  vcomps = 3;
         ctype = GL_FLOAT;
         coffset = 2*f;
         noffset = 6*f;
         voffset = 9*f;
         defstride = 12*f;
         break;
      case GL_T4F_C4F_N3F_V4F:
         tflag = GL_TRUE;  cflag = GL_TRUE;  nflag = GL_TRUE;
         tcomps = 4;  ccomps = 4;  vcomps = 4;
         ctype = GL_FLOAT;
         coffset = 4*f;
         noffset = 8*f;
         voffset = 11*f;
         defstride = 15*f;
         break;
      default:
         FUNC6( ctx, GL_INVALID_ENUM, "glInterleavedArrays(format)" );
         return;
   }

   if (stride==0) {
      stride = defstride;
   }

   FUNC1( ctx, GL_EDGE_FLAG_ARRAY );
   FUNC1( ctx, GL_INDEX_ARRAY );

   if (tflag) {
      FUNC2( ctx, GL_TEXTURE_COORD_ARRAY );
      FUNC4( ctx, tcomps, GL_FLOAT, stride, pointer );
   }
   else {
      FUNC1( ctx, GL_TEXTURE_COORD_ARRAY );
   }

   if (cflag) {
      FUNC2( ctx, GL_COLOR_ARRAY );
      FUNC0( ctx, ccomps, ctype, stride,
                       (GLubyte*) pointer + coffset );
   }
   else {
      FUNC1( ctx, GL_COLOR_ARRAY );
   }

   if (nflag) {
      FUNC2( ctx, GL_NORMAL_ARRAY );
      FUNC3( ctx, GL_FLOAT, stride,
                        (GLubyte*) pointer + noffset );
   }
   else {
      FUNC1( ctx, GL_NORMAL_ARRAY );
   }

   FUNC2( ctx, GL_VERTEX_ARRAY );
   FUNC5( ctx, vcomps, GL_FLOAT, stride,
                     (GLubyte *) pointer + voffset );
}