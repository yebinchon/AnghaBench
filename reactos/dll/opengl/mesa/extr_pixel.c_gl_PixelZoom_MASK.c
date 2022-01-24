#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* ZoomY; void* ZoomX; } ;
struct TYPE_8__ {TYPE_1__ Pixel; } ;
typedef  void* GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3( GLcontext *ctx, GLfloat xfactor, GLfloat yfactor )
{
   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glPixelZoom" );
      return;
   }
   ctx->Pixel.ZoomX = xfactor;
   ctx->Pixel.ZoomY = yfactor;
   FUNC2( ctx );
}