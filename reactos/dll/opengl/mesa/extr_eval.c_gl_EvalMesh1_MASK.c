#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int MapGrid1u2; int MapGrid1u1; int MapGrid1un; } ;
struct TYPE_10__ {TYPE_1__ Eval; } ;
typedef  int GLint ;
typedef  int GLfloat ;
typedef  int GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_LINE 129 
 int GL_LINE_STRIP ; 
#define  GL_POINT 128 
 int GL_POINTS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC5( GLcontext* ctx, GLenum mode, GLint i1, GLint i2 )
{
   GLint i;
   GLfloat u, du;
   GLenum prim;

	if (FUNC0(ctx)) {
		FUNC4( ctx, GL_INVALID_OPERATION, "glEvalMesh1" );
		return;
	}

	switch (mode) {
	case GL_POINT:
		prim = GL_POINTS;
		break;
	case GL_LINE:
		prim = GL_LINE_STRIP;
		break;
	default:
		FUNC4( ctx, GL_INVALID_ENUM, "glEvalMesh1(mode)" );
		return;
	}

	du = (ctx->Eval.MapGrid1u2 - ctx->Eval.MapGrid1u1)
		/ (GLfloat) ctx->Eval.MapGrid1un;

	FUNC1( ctx, prim );
	for (i=i1;i<=i2;i++) {
		if (i==0) {
			u = ctx->Eval.MapGrid1u1;
		}
		else if (i==ctx->Eval.MapGrid1un) {
			u = ctx->Eval.MapGrid1u2;
		}
		else {
			u = i * du + ctx->Eval.MapGrid1u1;
		}
		FUNC3( ctx, u );
	}
	FUNC2(ctx);
}