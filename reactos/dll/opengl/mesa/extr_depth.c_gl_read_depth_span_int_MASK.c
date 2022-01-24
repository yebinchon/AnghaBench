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
struct TYPE_6__ {TYPE_1__* Buffer; } ;
struct TYPE_5__ {scalar_t__ Depth; } ;
typedef  int GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  double GLdepth ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,int) ; 
 double* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2( GLcontext* ctx,
                             GLuint n, GLint x, GLint y, GLdepth depth[] )
{
   if (ctx->Buffer->Depth) {
      GLdepth *zptr = FUNC1( ctx, x, y );
      FUNC0( depth, zptr, n * sizeof(GLdepth) );
   }
   else {
      GLuint i;
      for (i=0;i<n;i++) {
	 depth[i] = 0.0;
      }
   }
}