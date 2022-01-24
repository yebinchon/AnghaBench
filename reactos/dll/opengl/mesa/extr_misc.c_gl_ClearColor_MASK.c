#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* ClearColor ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int* ClearColor; } ;
struct TYPE_12__ {TYPE_3__ Driver; TYPE_2__* Visual; TYPE_1__ Color; } ;
struct TYPE_10__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; scalar_t__ RGBAflag; } ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLint ;
typedef  TYPE_4__ GLcontext ;
typedef  int /*<<< orphan*/  GLclampf ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4( GLcontext *ctx, GLclampf red, GLclampf green,
                    GLclampf blue, GLclampf alpha )
{
   if (FUNC1(ctx)) {
      FUNC2( ctx, GL_INVALID_OPERATION, "glClearColor" );
      return;
   }

   ctx->Color.ClearColor[0] = FUNC0( red,   0.0F, 1.0F );
   ctx->Color.ClearColor[1] = FUNC0( green, 0.0F, 1.0F );
   ctx->Color.ClearColor[2] = FUNC0( blue,  0.0F, 1.0F );
   ctx->Color.ClearColor[3] = FUNC0( alpha, 0.0F, 1.0F );

   if (ctx->Visual->RGBAflag) {
      GLubyte r = (GLint) (ctx->Color.ClearColor[0] * ctx->Visual->RedScale);
      GLubyte g = (GLint) (ctx->Color.ClearColor[1] * ctx->Visual->GreenScale);
      GLubyte b = (GLint) (ctx->Color.ClearColor[2] * ctx->Visual->BlueScale);
      GLubyte a = (GLint) (ctx->Color.ClearColor[3] * ctx->Visual->AlphaScale);
      (*ctx->Driver.ClearColor)( ctx, r, g, b, a );
   }
}