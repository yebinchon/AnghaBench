
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NormalStrideB; int NormalType; int ColorStrideB; int ColorType; int IndexStrideB; int IndexType; int TexCoordStrideB; int TexCoordType; int EdgeFlagStrideB; int VertexStrideB; int VertexType; int VertexSize; scalar_t__ VertexPtr; scalar_t__ VertexEnabled; scalar_t__ EdgeFlagPtr; scalar_t__ EdgeFlagEnabled; int TexCoordSize; scalar_t__ TexCoordPtr; scalar_t__ TexCoordEnabled; scalar_t__ IndexPtr; scalar_t__ IndexEnabled; int ColorSize; scalar_t__ ColorPtr; scalar_t__ ColorEnabled; scalar_t__ NormalPtr; scalar_t__ NormalEnabled; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;
typedef int GLbyte ;
typedef int GLboolean ;
 int glColor3bv (int *) ;
 int glColor3dv (int *) ;
 int glColor3fv (int *) ;
 int glColor3iv (int*) ;
 int glColor3sv (int *) ;
 int glColor3ubv (int *) ;
 int glColor3uiv (int *) ;
 int glColor3usv (int *) ;
 int glColor4bv (int *) ;
 int glColor4dv (int *) ;
 int glColor4fv (int *) ;
 int glColor4iv (int*) ;
 int glColor4sv (int *) ;
 int glColor4ubv (int *) ;
 int glColor4uiv (int *) ;
 int glColor4usv (int *) ;
 int glEdgeFlagv (int *) ;
 int glIndexdv (int *) ;
 int glIndexfv (int *) ;
 int glIndexiv (int*) ;
 int glIndexsv (int *) ;
 int glNormal3bv (int *) ;
 int glNormal3dv (int *) ;
 int glNormal3fv (int *) ;
 int glNormal3iv (int*) ;
 int glNormal3sv (int *) ;
 int glTexCoord1dv (int *) ;
 int glTexCoord1fv (int *) ;
 int glTexCoord1iv (int*) ;
 int glTexCoord1sv (int *) ;
 int glTexCoord2dv (int *) ;
 int glTexCoord2fv (int *) ;
 int glTexCoord2iv (int*) ;
 int glTexCoord2sv (int *) ;
 int glTexCoord3dv (int *) ;
 int glTexCoord3fv (int *) ;
 int glTexCoord3iv (int*) ;
 int glTexCoord3sv (int *) ;
 int glTexCoord4dv (int *) ;
 int glTexCoord4fv (int *) ;
 int glTexCoord4iv (int*) ;
 int glTexCoord4sv (int *) ;
 int glVertex2dv (int *) ;
 int glVertex2fv (int *) ;
 int glVertex2iv (int*) ;
 int glVertex2sv (int *) ;
 int glVertex3dv (int *) ;
 int glVertex3fv (int *) ;
 int glVertex3iv (int*) ;
 int glVertex3sv (int *) ;
 int glVertex4dv (int *) ;
 int glVertex4fv (int *) ;
 int glVertex4iv (int*) ;
 int glVertex4sv (int *) ;
 int gl_problem (TYPE_2__*,char*) ;

void gl_save_ArrayElement( GLcontext *ctx, GLint i )
{
   if (ctx->Array.NormalEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.NormalPtr
                  + i * ctx->Array.NormalStrideB;
      switch (ctx->Array.NormalType) {
         case 135:
            glNormal3bv( (GLbyte*) p );
            break;
         case 131:
            glNormal3sv( (GLshort*) p );
            break;
         case 132:
            glNormal3iv( (GLint*) p );
            break;
         case 133:
            glNormal3fv( (GLfloat*) p );
            break;
         case 134:
            glNormal3dv( (GLdouble*) p );
            break;
         default:
            gl_problem(ctx, "Bad normal type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.ColorEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.ColorPtr + i * ctx->Array.ColorStrideB;
      switch (ctx->Array.ColorType) {
         case 135:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3bv( (GLbyte*) p ); break;
               case 4: glColor4bv( (GLbyte*) p ); break;
            }
            break;
         case 130:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3ubv( (GLubyte*) p ); break;
               case 4: glColor4ubv( (GLubyte*) p ); break;
            }
            break;
         case 131:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3sv( (GLshort*) p ); break;
               case 4: glColor4sv( (GLshort*) p ); break;
            }
            break;
         case 128:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3usv( (GLushort*) p ); break;
               case 4: glColor4usv( (GLushort*) p ); break;
            }
            break;
         case 132:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3iv( (GLint*) p ); break;
               case 4: glColor4iv( (GLint*) p ); break;
            }
            break;
         case 129:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3uiv( (GLuint*) p ); break;
               case 4: glColor4uiv( (GLuint*) p ); break;
            }
            break;
         case 133:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3fv( (GLfloat*) p ); break;
               case 4: glColor4fv( (GLfloat*) p ); break;
            }
            break;
         case 134:
            switch (ctx->Array.ColorSize) {
               case 3: glColor3dv( (GLdouble*) p ); break;
               case 4: glColor4dv( (GLdouble*) p ); break;
            }
            break;
         default:
            gl_problem(ctx, "Bad color type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.IndexEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.IndexPtr + i * ctx->Array.IndexStrideB;
      switch (ctx->Array.IndexType) {
         case 131:
            glIndexsv( (GLshort*) p );
            break;
         case 132:
            glIndexiv( (GLint*) p );
            break;
         case 133:
            glIndexfv( (GLfloat*) p );
            break;
         case 134:
            glIndexdv( (GLdouble*) p );
            break;
         default:
            gl_problem(ctx, "Bad index type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.TexCoordEnabled) {
      GLbyte *p = (GLbyte*) ctx->Array.TexCoordPtr
                  + i * ctx->Array.TexCoordStrideB;
      switch (ctx->Array.TexCoordType) {
         case 131:
            switch (ctx->Array.TexCoordSize) {
               case 1: glTexCoord1sv( (GLshort*) p ); break;
               case 2: glTexCoord2sv( (GLshort*) p ); break;
               case 3: glTexCoord3sv( (GLshort*) p ); break;
               case 4: glTexCoord4sv( (GLshort*) p ); break;
            }
            break;
         case 132:
            switch (ctx->Array.TexCoordSize) {
               case 1: glTexCoord1iv( (GLint*) p ); break;
               case 2: glTexCoord2iv( (GLint*) p ); break;
               case 3: glTexCoord3iv( (GLint*) p ); break;
               case 4: glTexCoord4iv( (GLint*) p ); break;
            }
            break;
         case 133:
            switch (ctx->Array.TexCoordSize) {
               case 1: glTexCoord1fv( (GLfloat*) p ); break;
               case 2: glTexCoord2fv( (GLfloat*) p ); break;
               case 3: glTexCoord3fv( (GLfloat*) p ); break;
               case 4: glTexCoord4fv( (GLfloat*) p ); break;
            }
            break;
         case 134:
            switch (ctx->Array.TexCoordSize) {
               case 1: glTexCoord1dv( (GLdouble*) p ); break;
               case 2: glTexCoord2dv( (GLdouble*) p ); break;
               case 3: glTexCoord3dv( (GLdouble*) p ); break;
               case 4: glTexCoord4dv( (GLdouble*) p ); break;
            }
            break;
         default:
            gl_problem(ctx, "Bad texcoord type in gl_save_ArrayElement");
            return;
      }
   }

   if (ctx->Array.EdgeFlagEnabled) {
      GLbyte *b = (GLbyte*) ctx->Array.EdgeFlagPtr + i * ctx->Array.EdgeFlagStrideB;
      glEdgeFlagv( (GLboolean*) b );
   }

   if (ctx->Array.VertexEnabled) {
      GLbyte *b = (GLbyte*) ctx->Array.VertexPtr
                  + i * ctx->Array.VertexStrideB;
      switch (ctx->Array.VertexType) {
         case 131:
            switch (ctx->Array.VertexSize) {
               case 2: glVertex2sv( (GLshort*) b ); break;
               case 3: glVertex3sv( (GLshort*) b ); break;
               case 4: glVertex4sv( (GLshort*) b ); break;
            }
            break;
         case 132:
            switch (ctx->Array.VertexSize) {
               case 2: glVertex2iv( (GLint*) b ); break;
               case 3: glVertex3iv( (GLint*) b ); break;
               case 4: glVertex4iv( (GLint*) b ); break;
            }
            break;
         case 133:
            switch (ctx->Array.VertexSize) {
               case 2: glVertex2fv( (GLfloat*) b ); break;
               case 3: glVertex3fv( (GLfloat*) b ); break;
               case 4: glVertex4fv( (GLfloat*) b ); break;
            }
            break;
         case 134:
            switch (ctx->Array.VertexSize) {
               case 2: glVertex2dv( (GLdouble*) b ); break;
               case 3: glVertex3dv( (GLdouble*) b ); break;
               case 4: glVertex4dv( (GLdouble*) b ); break;
            }
            break;
         default:
            gl_problem(ctx, "Bad vertex type in gl_save_ArrayElement");
            return;
      }
   }
}
