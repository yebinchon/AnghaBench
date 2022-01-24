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
struct TYPE_6__ {double Near; double Far; double Sz; double Tz; } ;
struct TYPE_7__ {TYPE_1__ Viewport; } ;
typedef  double GLfloat ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLclampd ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double,double) ; 
 double DEPTH_SCALE ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3( GLcontext* ctx, GLclampd nearval, GLclampd farval )
{
   /*
    * nearval - specifies mapping of the near clipping plane to window
    *   coordinates, default is 0
    * farval - specifies mapping of the far clipping plane to window
    *   coordinates, default is 1
    *
    * After clipping and div by w, z coords are in -1.0 to 1.0,
    * corresponding to near and far clipping planes.  glDepthRange
    * specifies a linear mapping of the normalized z coords in
    * this range to window z coords.
    */

   GLfloat n, f;

   if (FUNC1(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glDepthRange" );
      return;
   }

   n = (GLfloat) FUNC0( nearval, 0.0, 1.0 );
   f = (GLfloat) FUNC0( farval, 0.0, 1.0 );

   ctx->Viewport.Near = n;
   ctx->Viewport.Far = f;
   ctx->Viewport.Sz = DEPTH_SCALE * ((f - n) / 2.0);
   ctx->Viewport.Tz = DEPTH_SCALE * ((f - n) / 2.0 + n);
}