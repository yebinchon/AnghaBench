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
struct TYPE_6__ {int /*<<< orphan*/  EyePlaneQ; int /*<<< orphan*/  ObjectPlaneQ; int /*<<< orphan*/  GenModeQ; int /*<<< orphan*/  EyePlaneR; int /*<<< orphan*/  ObjectPlaneR; int /*<<< orphan*/  GenModeR; int /*<<< orphan*/  EyePlaneT; int /*<<< orphan*/  ObjectPlaneT; int /*<<< orphan*/  GenModeT; int /*<<< orphan*/  EyePlaneS; int /*<<< orphan*/  ObjectPlaneS; int /*<<< orphan*/  GenModeS; } ;
struct TYPE_7__ {TYPE_1__ Texture; } ;
typedef  int GLenum ;
typedef  int /*<<< orphan*/  GLdouble ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GL_EYE_PLANE ; 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int GL_OBJECT_PLANE ; 
#define  GL_Q 131 
#define  GL_R 130 
#define  GL_S 129 
#define  GL_T 128 
 int GL_TEXTURE_GEN_MODE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC4( GLcontext *ctx,
                     GLenum coord, GLenum pname, GLdouble *params )
{
   if (FUNC2(ctx)) {
      FUNC3( ctx, GL_INVALID_OPERATION, "glGetTexGendv" );
      return;
   }

   switch( coord ) {
      case GL_S:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = FUNC1(ctx->Texture.GenModeS);
	 }
	 else if (pname==GL_OBJECT_PLANE) {
            FUNC0( params, ctx->Texture.ObjectPlaneS );
	 }
	 else if (pname==GL_EYE_PLANE) {
            FUNC0( params, ctx->Texture.EyePlaneS );
	 }
	 else {
	    FUNC3( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
	    return;
	 }
	 break;
      case GL_T:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = FUNC1(ctx->Texture.GenModeT);
	 }
	 else if (pname==GL_OBJECT_PLANE) {
            FUNC0( params, ctx->Texture.ObjectPlaneT );
	 }
	 else if (pname==GL_EYE_PLANE) {
            FUNC0( params, ctx->Texture.EyePlaneT );
	 }
	 else {
	    FUNC3( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
	    return;
	 }
	 break;
      case GL_R:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = FUNC1(ctx->Texture.GenModeR);
	 }
	 else if (pname==GL_OBJECT_PLANE) {
            FUNC0( params, ctx->Texture.ObjectPlaneR );
	 }
	 else if (pname==GL_EYE_PLANE) {
            FUNC0( params, ctx->Texture.EyePlaneR );
	 }
	 else {
	    FUNC3( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
	    return;
	 }
	 break;
      case GL_Q:
         if (pname==GL_TEXTURE_GEN_MODE) {
            params[0] = FUNC1(ctx->Texture.GenModeQ);
	 }
	 else if (pname==GL_OBJECT_PLANE) {
            FUNC0( params, ctx->Texture.ObjectPlaneQ );
	 }
	 else if (pname==GL_EYE_PLANE) {
            FUNC0( params, ctx->Texture.EyePlaneQ );
	 }
	 else {
	    FUNC3( ctx, GL_INVALID_ENUM, "glGetTexGendv(pname)" );
	    return;
	 }
	 break;
      default:
         FUNC3( ctx, GL_INVALID_ENUM, "glGetTexGendv(coord)" );
	 return;
   }
}