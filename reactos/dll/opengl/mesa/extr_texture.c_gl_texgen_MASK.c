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
struct TYPE_5__ {int TexGenEnabled; int GenModeS; int GenModeT; int GenModeR; int GenModeQ; int /*<<< orphan*/  EyePlaneQ; int /*<<< orphan*/  ObjectPlaneQ; int /*<<< orphan*/  EyePlaneR; int /*<<< orphan*/  ObjectPlaneR; int /*<<< orphan*/  EyePlaneT; int /*<<< orphan*/  ObjectPlaneT; int /*<<< orphan*/  EyePlaneS; int /*<<< orphan*/  ObjectPlaneS; } ;
struct TYPE_6__ {TYPE_1__ Texture; } ;
typedef  size_t GLint ;
typedef  float GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*) ; 
 double FUNC1 (float*,float*) ; 
 float FUNC2 (float*,int /*<<< orphan*/ ) ; 
#define  GL_EYE_LINEAR 130 
#define  GL_OBJECT_LINEAR 129 
#define  GL_SPHERE_MAP 128 
 float FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int Q_BIT ; 
 int R_BIT ; 
 int S_BIT ; 
 int T_BIT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 

void FUNC6( GLcontext *ctx, GLint n,
                GLfloat obj[][4], GLfloat eye[][4],
                GLfloat normal[][3], GLfloat texcoord[][4] )
{
   /* special case: S and T sphere mapping */
   if (ctx->Texture.TexGenEnabled==(S_BIT|T_BIT)
       && ctx->Texture.GenModeS==GL_SPHERE_MAP
       && ctx->Texture.GenModeT==GL_SPHERE_MAP) {
      GLint i;
      for (i=0;i<n;i++) {
         GLfloat u[3], two_nu, m, fx, fy, fz;
         FUNC0( u, eye[i] );
         FUNC4( u );
         two_nu = 2.0F * FUNC1(normal[i],u);
         fx = u[0] - normal[i][0] * two_nu;
         fy = u[1] - normal[i][1] * two_nu;
         fz = u[2] - normal[i][2] * two_nu;
         m = 2.0F * FUNC3( fx*fx + fy*fy + (fz+1.0F)*(fz+1.0F) );
         if (m==0.0F) {
            texcoord[i][0] = 0.5F;
            texcoord[i][1] = 0.5F;
         }
         else {
            GLfloat mInv = 1.0F / m;
            texcoord[i][0] = fx * mInv + 0.5F;
            texcoord[i][1] = fy * mInv + 0.5F;
         }
      }
      return;
   }

   /* general solution */
   if (ctx->Texture.TexGenEnabled & S_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeS) {
         case GL_OBJECT_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][0] = FUNC2( obj[i], ctx->Texture.ObjectPlaneS );
            }
            break;
         case GL_EYE_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][0] = FUNC2( eye[i], ctx->Texture.EyePlaneS );
            }
            break;
         case GL_SPHERE_MAP:
            for (i=0;i<n;i++) {
               GLfloat u[3], two_nu, m, fx, fy, fz;
               FUNC0( u, eye[i] );
               FUNC4( u );
               two_nu = 2.0*FUNC1(normal[i],u);
               fx = u[0] - normal[i][0] * two_nu;
               fy = u[1] - normal[i][1] * two_nu;
               fz = u[2] - normal[i][2] * two_nu;
               m = 2.0F * FUNC3( fx*fx + fy*fy + (fz+1.0)*(fz+1.0) );
               if (m==0.0F) {
                  texcoord[i][0] = 0.5F;
               }
               else {
                  texcoord[i][0] = fx / m + 0.5F;
               }
            }
            break;
         default:
            FUNC5(ctx, "Bad S texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & T_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeT) {
         case GL_OBJECT_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][1] = FUNC2( obj[i], ctx->Texture.ObjectPlaneT );
            }
            break;
         case GL_EYE_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][1] = FUNC2( eye[i], ctx->Texture.EyePlaneT );
            }
            break;
         case GL_SPHERE_MAP:
            for (i=0;i<n;i++) {
               GLfloat u[3], two_nu, m, fx, fy, fz;
               FUNC0( u, eye[i] );
               FUNC4( u );
               two_nu = 2.0*FUNC1(normal[i],u);
               fx = u[0] - normal[i][0] * two_nu;
               fy = u[1] - normal[i][1] * two_nu;
               fz = u[2] - normal[i][2] * two_nu;
               m = 2.0F * FUNC3( fx*fx + fy*fy + (fz+1.0)*(fz+1.0) );
               if (m==0.0F) {
                  texcoord[i][1] = 0.5F;
               }
               else {
                  texcoord[i][1] = fy / m + 0.5F;
               }
            }
            break;
         default:
            FUNC5(ctx, "Bad T texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & R_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeR) {
         case GL_OBJECT_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][2] = FUNC2( obj[i], ctx->Texture.ObjectPlaneR );
            }
            break;
         case GL_EYE_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][2] = FUNC2( eye[i], ctx->Texture.EyePlaneR );
            }
            break;
         default:
            FUNC5(ctx, "Bad R texgen");
            return;
      }
   }

   if (ctx->Texture.TexGenEnabled & Q_BIT) {
      GLint i;
      switch (ctx->Texture.GenModeQ) {
         case GL_OBJECT_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][3] = FUNC2( obj[i], ctx->Texture.ObjectPlaneQ );
            }
            break;
         case GL_EYE_LINEAR:
            for (i=0;i<n;i++) {
               texcoord[i][3] = FUNC2( eye[i], ctx->Texture.EyePlaneQ );
            }
            break;
         default:
            FUNC5(ctx, "Bad Q texgen");
            return;
      }
   }
}