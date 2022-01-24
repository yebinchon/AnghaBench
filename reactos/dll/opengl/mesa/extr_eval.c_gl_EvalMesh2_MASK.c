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
struct TYPE_9__ {int MapGrid2u2; int MapGrid2u1; int MapGrid2v2; int MapGrid2v1; scalar_t__ MapGrid2vn; scalar_t__ MapGrid2un; } ;
struct TYPE_10__ {TYPE_1__ Eval; } ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int GLfloat ;
typedef  int GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
#define  GL_FILL 130 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_LINE 129 
 int /*<<< orphan*/  GL_LINE_STRIP ; 
#define  GL_POINT 128 
 int /*<<< orphan*/  GL_POINTS ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

void FUNC7( GLcontext* ctx, GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 )
{
	GLint i, j;
	GLfloat u, du, v, dv, v1, v2;

	if (FUNC0(ctx)) {
		FUNC6( ctx, GL_INVALID_OPERATION, "glEvalMesh2" );
		return;
	}

	du = (ctx->Eval.MapGrid2u2 - ctx->Eval.MapGrid2u1)
		/ (GLfloat) ctx->Eval.MapGrid2un;
	dv = (ctx->Eval.MapGrid2v2 - ctx->Eval.MapGrid2v1)
		/ (GLfloat) ctx->Eval.MapGrid2vn;

#define I_TO_U( I, U )				\
	if ((I)==0) {		       	\
		U = ctx->Eval.MapGrid2u1;		\
	}					\
	else if ((I)==ctx->Eval.MapGrid2un) {	\
		U = ctx->Eval.MapGrid2u2;		\
	}					\
	else {				\
		U = (I) * du + ctx->Eval.MapGrid2u1;\
	}

#define J_TO_V( J, V )				\
	if ((J)==0) {			\
		V = ctx->Eval.MapGrid2v1;		\
	}					\
	else if ((J)==ctx->Eval.MapGrid2vn) {	\
		V = ctx->Eval.MapGrid2v2;		\
	}					\
	else {				\
		V = (J) * dv + ctx->Eval.MapGrid2v1;\
	}

	switch (mode) {
	case GL_POINT:
		FUNC3( ctx, GL_POINTS );
		for (j=j1;j<=j2;j++) {
			J_TO_V( j, v );
			for (i=i1;i<=i2;i++) {
				I_TO_U( i, u );
				FUNC5( ctx, u, v );
			}
		}
		FUNC4(ctx);
		break;
	case GL_LINE:
		for (j=j1;j<=j2;j++) {
			J_TO_V( j, v );
			FUNC3( ctx, GL_LINE_STRIP );
			for (i=i1;i<=i2;i++) {
				I_TO_U( i, u );
				FUNC5( ctx, u, v );
			}
			FUNC4(ctx);
		}
		for (i=i1;i<=i2;i++) {
			I_TO_U( i, u );
			FUNC3( ctx, GL_LINE_STRIP );
			for (j=j1;j<=j2;j++) {
				J_TO_V( j, v );
				FUNC5( ctx, u, v );
			}
			FUNC4(ctx);
		}
		break;
	case GL_FILL:
		for (j=j1;j<j2;j++) {
			/* NOTE: a quad strip can't be used because the four */
			/* can't be guaranteed to be coplanar! */
			FUNC3( ctx, GL_TRIANGLE_STRIP );
			J_TO_V( j, v1 );
			J_TO_V( j+1, v2 );
			for (i=i1;i<=i2;i++) {
				I_TO_U( i, u );
				FUNC5( ctx, u, v1 );
				FUNC5( ctx, u, v2 );
			}
			FUNC4(ctx);
		}
		break;
	default:
		FUNC6( ctx, GL_INVALID_ENUM, "glEvalMesh2(mode)" );
		return;
	}

#undef I_TO_U
#undef J_TO_V
}