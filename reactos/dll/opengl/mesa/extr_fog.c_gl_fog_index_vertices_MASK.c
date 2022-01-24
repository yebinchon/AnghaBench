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
struct TYPE_5__ {int Mode; float End; float Start; float Index; float Density; } ;
struct TYPE_6__ {TYPE_1__ Fog; } ;
typedef  size_t GLuint ;
typedef  size_t GLint ;
typedef  float GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float,float,float) ; 
#define  GL_EXP 130 
#define  GL_EXP2 129 
#define  GL_LINEAR 128 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

void FUNC4( GLcontext *ctx,
                            GLuint n, GLfloat v[][4], GLuint indx[] )
{
   /* NOTE: the extensive use of casts generates better/faster code for MIPS */
   switch (ctx->Fog.Mode) {
      case GL_LINEAR:
         {
            GLfloat d = 1.0F / (ctx->Fog.End - ctx->Fog.Start);
            GLfloat fogindex = ctx->Fog.Index;
            GLfloat fogend = ctx->Fog.End;
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat f = (fogend - FUNC0(v[i][2])) * d;
               f = FUNC1( f, 0.0F, 1.0F );
               indx[i] = (GLint)
                         ((GLfloat) (GLint) indx[i] + (1.0F-f) * fogindex);
            }
         }
	 break;
      case GL_EXP:
         {
            GLfloat d = -ctx->Fog.Density;
            GLfloat fogindex = ctx->Fog.Index;
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat f = FUNC2( d * FUNC0(v[i][2]) );
               f = FUNC1( f, 0.0F, 1.0F );
               indx[i] = (GLint)
                         ((GLfloat) (GLint) indx[i] + (1.0F-f) * fogindex);
            }
         }
	 break;
      case GL_EXP2:
         {
            GLfloat d = -(ctx->Fog.Density*ctx->Fog.Density);
            GLfloat fogindex = ctx->Fog.Index;
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat z = FUNC0(v[i][2]);
               GLfloat f = FUNC2( -d * z*z );
               f = FUNC1( f, 0.0F, 1.0F );
               indx[i] = (GLint)
                         ((GLfloat) (GLint) indx[i] + (1.0F-f) * fogindex);
            }
         }
	 break;
      default:
         FUNC3(ctx, "Bad fog mode in gl_fog_index_vertices");
         return;
   }
}