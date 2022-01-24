#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct gl_texture_image {scalar_t__ Border; scalar_t__ Width; scalar_t__ Height; scalar_t__ Data; } ;
struct TYPE_9__ {TYPE_1__* Current2D; } ;
struct TYPE_10__ {TYPE_2__ Texture; } ;
struct TYPE_8__ {struct gl_texture_image** Image; } ;
typedef  scalar_t__ GLsizei ;
typedef  size_t GLint ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 int /*<<< orphan*/  GL_INVALID_VALUE ; 
 scalar_t__ GL_TEXTURE_2D ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 size_t MAX_TEXTURE_LEVELS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct gl_texture_image*,scalar_t__,scalar_t__,size_t,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext *ctx,
                              GLenum target, GLint level,
                              GLint xoffset, GLint yoffset,
                              GLint x, GLint y, GLsizei width, GLsizei height )
{
   struct gl_texture_image *teximage;

   if (FUNC0(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glCopyTexSubImage2D" );
      return;
   }
   if (target!=GL_TEXTURE_2D) {
      FUNC2( ctx, GL_INVALID_ENUM, "glCopyTexSubImage2D(target)" );
      return;
   }
   if (level<0 || level>=MAX_TEXTURE_LEVELS) {
      FUNC2( ctx, GL_INVALID_VALUE, "glCopyTexSubImage2D(level)" );
      return;
   }
   if (width<0) {
      FUNC2( ctx, GL_INVALID_VALUE, "glCopyTexSubImage2D(width)" );
      return;
   }
   if (height<0) {
      FUNC2( ctx, GL_INVALID_VALUE, "glCopyTexSubImage2D(height)" );
      return;
   }

   teximage = ctx->Texture.Current2D->Image[level];

   if (teximage) {
      if (xoffset < -((GLint)teximage->Border)) {
         FUNC2( ctx, GL_INVALID_VALUE, "glCopyTexSubImage2D(xoffset)" );
         return;
      }
      if (yoffset < -((GLint)teximage->Border)) {
         FUNC2( ctx, GL_INVALID_VALUE, "glCopyTexSubImage2D(yoffset)" );
         return;
      }
      /* NOTE: we're adding the border here, not subtracting! */
      if (xoffset+width > teximage->Width+teximage->Border) {
         FUNC2( ctx, GL_INVALID_VALUE,
                   "glCopyTexSubImage2D(xoffset+width)" );
         return;
      }
      if (yoffset+height > teximage->Height+teximage->Border) {
         FUNC2( ctx, GL_INVALID_VALUE,
                   "glCopyTexSubImage2D(yoffset+height)" );
         return;
      }

      if (teximage->Data) {
         FUNC1( ctx, teximage, width, height,
                             x, y, xoffset, yoffset);
      }
   }
   else {
      FUNC2( ctx, GL_INVALID_OPERATION, "glCopyTexSubImage2D" );
   }
}