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
struct TYPE_5__ {int HitMinZ; int HitMaxZ; size_t NameStackDepth; size_t* NameStack; int /*<<< orphan*/  HitFlag; int /*<<< orphan*/  Hits; } ;
struct TYPE_6__ {TYPE_1__ Select; } ;
typedef  size_t GLuint ;
typedef  int GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( GLcontext *ctx )
{
   GLuint i;
   GLuint zmin, zmax, zscale = (~0u);

   /* HitMinZ and HitMaxZ are in [0,1].  Multiply these values by */
   /* 2^32-1 and round to nearest unsigned integer. */

   FUNC1( ctx != NULL ); /* this line magically fixes a SunOS 5.x/gcc bug */
   zmin = (GLuint) ((GLfloat) zscale * ctx->Select.HitMinZ);
   zmax = (GLuint) ((GLfloat) zscale * ctx->Select.HitMaxZ);

   FUNC0( ctx, ctx->Select.NameStackDepth );
   FUNC0( ctx, zmin );
   FUNC0( ctx, zmax );
   for (i=0;i<ctx->Select.NameStackDepth;i++) {
      FUNC0( ctx, ctx->Select.NameStack[i] );
   }

   ctx->Select.Hits++;
   ctx->Select.HitFlag = GL_FALSE;
   ctx->Select.HitMinZ = 1.0;
   ctx->Select.HitMaxZ = -1.0;
}