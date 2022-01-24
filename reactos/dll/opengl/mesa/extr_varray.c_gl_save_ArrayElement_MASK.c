#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int NormalStrideB; int NormalType; int ColorStrideB; int ColorType; int IndexStrideB; int IndexType; int TexCoordStrideB; int TexCoordType; int EdgeFlagStrideB; int VertexStrideB; int VertexType; int /*<<< orphan*/  VertexSize; scalar_t__ VertexPtr; scalar_t__ VertexEnabled; scalar_t__ EdgeFlagPtr; scalar_t__ EdgeFlagEnabled; int /*<<< orphan*/  TexCoordSize; scalar_t__ TexCoordPtr; scalar_t__ TexCoordEnabled; scalar_t__ IndexPtr; scalar_t__ IndexEnabled; int /*<<< orphan*/  ColorSize; scalar_t__ ColorPtr; scalar_t__ ColorEnabled; scalar_t__ NormalPtr; scalar_t__ NormalEnabled; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLshort ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLdouble ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLbyte ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
#define  GL_BYTE 135 
#define  GL_DOUBLE 134 
#define  GL_FLOAT 133 
#define  GL_INT 132 
#define  GL_SHORT 131 
#define  GL_UNSIGNED_BYTE 130 
#define  GL_UNSIGNED_INT 129 
#define  GL_UNSIGNED_SHORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int*) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (int*) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC54 (TYPE_2__*,char*) ; 

void FUNC55( GLcontext *ctx, GLint i )
{
   if (ctx->Array.NormalEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.NormalPtr
                  + i * ctx->Array.NormalStrideB;
      switch (ctx->Array.NormalType) {
         case GL_BYTE:
            FUNC21( (GLbyte*) p );
            break;
         case GL_SHORT:
            FUNC25( (GLshort*) p );
            break;
         case GL_INT:
            FUNC24( (GLint*) p );
            break;
         case GL_FLOAT:
            FUNC23( (GLfloat*) p );
            break;
         case GL_DOUBLE:
            FUNC22( (GLdouble*) p );
            break;
         default:
            FUNC54(ctx, "Bad normal type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.ColorEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.ColorPtr + i * ctx->Array.ColorStrideB;
      switch (ctx->Array.ColorType) {
         case GL_BYTE:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC0( (GLbyte*) p );   break;
               case 4:   FUNC8( (GLbyte*) p );   break;
            }
            break;
         case GL_UNSIGNED_BYTE:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC5( (GLubyte*) p );   break;
               case 4:   FUNC13( (GLubyte*) p );   break;
            }
            break;
         case GL_SHORT:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC4( (GLshort*) p );   break;
               case 4:   FUNC12( (GLshort*) p );   break;
            }
            break;
         case GL_UNSIGNED_SHORT:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC7( (GLushort*) p );   break;
               case 4:   FUNC15( (GLushort*) p );   break;
            }
            break;
         case GL_INT:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC3( (GLint*) p );   break;
               case 4:   FUNC11( (GLint*) p );   break;
            }
            break;
         case GL_UNSIGNED_INT:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC6( (GLuint*) p );   break;
               case 4:   FUNC14( (GLuint*) p );   break;
            }
            break;
         case GL_FLOAT:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC2( (GLfloat*) p );   break;
               case 4:   FUNC10( (GLfloat*) p );   break;
            }
            break;
         case GL_DOUBLE:
            switch (ctx->Array.ColorSize) {
               case 3:   FUNC1( (GLdouble*) p );   break;
               case 4:   FUNC9( (GLdouble*) p );   break;
            }
            break;
         default:
            FUNC54(ctx, "Bad color type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.IndexEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.IndexPtr + i * ctx->Array.IndexStrideB;
      switch (ctx->Array.IndexType) {
         case GL_SHORT:
            FUNC20( (GLshort*) p );
            break;
         case GL_INT:
            FUNC19( (GLint*) p );
            break;
         case GL_FLOAT:
            FUNC18( (GLfloat*) p );
            break;
         case GL_DOUBLE:
            FUNC17( (GLdouble*) p );
            break;
         default:
            FUNC54(ctx, "Bad index type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.TexCoordEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.TexCoordPtr
                  + i * ctx->Array.TexCoordStrideB;
      switch (ctx->Array.TexCoordType) {
         case GL_SHORT:
            switch (ctx->Array.TexCoordSize) {
               case 1:   FUNC29( (GLshort*) p );   break;
               case 2:   FUNC33( (GLshort*) p );   break;
               case 3:   FUNC37( (GLshort*) p );   break;
               case 4:   FUNC41( (GLshort*) p );   break;
            }
            break;
         case GL_INT:
            switch (ctx->Array.TexCoordSize) {
               case 1:   FUNC28( (GLint*) p );   break;
               case 2:   FUNC32( (GLint*) p );   break;
               case 3:   FUNC36( (GLint*) p );   break;
               case 4:   FUNC40( (GLint*) p );   break;
            }
            break;
         case GL_FLOAT:
            switch (ctx->Array.TexCoordSize) {
               case 1:   FUNC27( (GLfloat*) p );   break;
               case 2:   FUNC31( (GLfloat*) p );   break;
               case 3:   FUNC35( (GLfloat*) p );   break;
               case 4:   FUNC39( (GLfloat*) p );   break;
            }
            break;
         case GL_DOUBLE:
            switch (ctx->Array.TexCoordSize) {
               case 1:   FUNC26( (GLdouble*) p );   break;
               case 2:   FUNC30( (GLdouble*) p );   break;
               case 3:   FUNC34( (GLdouble*) p );   break;
               case 4:   FUNC38( (GLdouble*) p );   break;
            }
            break;
         default:
            FUNC54(ctx, "Bad texcoord type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.EdgeFlagEnabled) {
      GLbyte *b = (GLbyte*) ctx->Array.EdgeFlagPtr + i * ctx->Array.EdgeFlagStrideB;
      FUNC16( (GLboolean*) b );
   }

   if (ctx->Array.VertexEnabled) {
      GLbyte *b = (GLbyte*) ctx->Array.VertexPtr
                  + i * ctx->Array.VertexStrideB;
      switch (ctx->Array.VertexType) {
         case GL_SHORT:
            switch (ctx->Array.VertexSize) {
               case 2:   FUNC45( (GLshort*) b );   break;
               case 3:   FUNC49( (GLshort*) b );   break;
               case 4:   FUNC53( (GLshort*) b );   break;
            }
            break;
         case GL_INT:
            switch (ctx->Array.VertexSize) {
               case 2:   FUNC44( (GLint*) b );   break;
               case 3:   FUNC48( (GLint*) b );   break;
               case 4:   FUNC52( (GLint*) b );   break;
            }
            break;
         case GL_FLOAT:
            switch (ctx->Array.VertexSize) {
               case 2:   FUNC43( (GLfloat*) b );   break;
               case 3:   FUNC47( (GLfloat*) b );   break;
               case 4:   FUNC51( (GLfloat*) b );   break;
            }
            break;
         case GL_DOUBLE:
            switch (ctx->Array.VertexSize) {
               case 2:   FUNC42( (GLdouble*) b );   break;
               case 3:   FUNC46( (GLdouble*) b );   break;
               case 4:   FUNC50( (GLdouble*) b );   break;
            }
            break;
         default:
            FUNC54(ctx, "Bad vertex type in gl_save_ArrayElement");
            return;
      }
   }
}