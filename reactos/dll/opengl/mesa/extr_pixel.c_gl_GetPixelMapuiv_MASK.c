#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int MapItoIsize; int MapStoSsize; size_t MapItoRsize; size_t MapItoGsize; size_t MapItoBsize; size_t MapItoAsize; size_t MapRtoRsize; size_t MapGtoGsize; size_t MapBtoBsize; size_t MapAtoAsize; int /*<<< orphan*/ * MapAtoA; int /*<<< orphan*/ * MapBtoB; int /*<<< orphan*/ * MapGtoG; int /*<<< orphan*/ * MapRtoR; int /*<<< orphan*/ * MapItoA; int /*<<< orphan*/ * MapItoB; int /*<<< orphan*/ * MapItoG; int /*<<< orphan*/ * MapItoR; int /*<<< orphan*/  MapStoS; int /*<<< orphan*/  MapItoI; } ;
struct TYPE_7__ {TYPE_1__ Pixel; } ;
typedef  size_t GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_PIXEL_MAP_A_TO_A 137 
#define  GL_PIXEL_MAP_B_TO_B 136 
#define  GL_PIXEL_MAP_G_TO_G 135 
#define  GL_PIXEL_MAP_I_TO_A 134 
#define  GL_PIXEL_MAP_I_TO_B 133 
#define  GL_PIXEL_MAP_I_TO_G 132 
#define  GL_PIXEL_MAP_I_TO_I 131 
#define  GL_PIXEL_MAP_I_TO_R 130 
#define  GL_PIXEL_MAP_R_TO_R 129 
#define  GL_PIXEL_MAP_S_TO_S 128 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC4( GLcontext *ctx, GLenum map, GLuint *values )
{
   GLuint i;

   if (FUNC1(ctx)) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glGetPixelMapfv" );
      return;
   }
   switch (map) {
      case GL_PIXEL_MAP_I_TO_I:
         FUNC2(values, ctx->Pixel.MapItoI, ctx->Pixel.MapItoIsize*sizeof(GLint));
	 break;
      case GL_PIXEL_MAP_S_TO_S:
         FUNC2(values, ctx->Pixel.MapStoS, ctx->Pixel.MapStoSsize*sizeof(GLint));
	 break;
      case GL_PIXEL_MAP_I_TO_R:
	 for (i=0;i<ctx->Pixel.MapItoRsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapItoR[i] );
	 }
	 break;
      case GL_PIXEL_MAP_I_TO_G:
	 for (i=0;i<ctx->Pixel.MapItoGsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapItoG[i] );
	 }
	 break;
      case GL_PIXEL_MAP_I_TO_B:
	 for (i=0;i<ctx->Pixel.MapItoBsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapItoB[i] );
	 }
	 break;
      case GL_PIXEL_MAP_I_TO_A:
	 for (i=0;i<ctx->Pixel.MapItoAsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapItoA[i] );
	 }
	 break;
      case GL_PIXEL_MAP_R_TO_R:
	 for (i=0;i<ctx->Pixel.MapRtoRsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapRtoR[i] );
	 }
	 break;
      case GL_PIXEL_MAP_G_TO_G:
	 for (i=0;i<ctx->Pixel.MapGtoGsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapGtoG[i] );
	 }
	 break;
      case GL_PIXEL_MAP_B_TO_B:
	 for (i=0;i<ctx->Pixel.MapBtoBsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapBtoB[i] );
	 }
	 break;
      case GL_PIXEL_MAP_A_TO_A:
	 for (i=0;i<ctx->Pixel.MapAtoAsize;i++) {
	    values[i] = FUNC0( ctx->Pixel.MapAtoA[i] );
	 }
	 break;
      default:
         FUNC3( ctx, GL_INVALID_ENUM, "glGetPixelMapfv" );
   }
}