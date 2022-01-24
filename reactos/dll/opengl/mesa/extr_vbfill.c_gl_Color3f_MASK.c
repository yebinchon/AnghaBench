#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ColorMaterialEnabled; } ;
struct TYPE_7__ {void** ByteColor; } ;
struct TYPE_11__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_10__ {int /*<<< orphan*/  MonoColor; } ;
struct TYPE_8__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_5__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,float,float) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  GL_FALSE ; 

void FUNC3( GLcontext *ctx, GLfloat red, GLfloat green, GLfloat blue )
{
   ctx->Current.ByteColor[0] = FUNC2(FUNC1(red  , 0.0F, 1.0F) * ctx->Visual->RedScale);
   ctx->Current.ByteColor[1] = FUNC2(FUNC1(green, 0.0F, 1.0F) * ctx->Visual->GreenScale);
   ctx->Current.ByteColor[2] = FUNC2(FUNC1(blue , 0.0F, 1.0F) * ctx->Visual->BlueScale);
   ctx->Current.ByteColor[3] = FUNC2(ctx->Visual->AlphaScale);
   FUNC0( !ctx->Light.ColorMaterialEnabled );
   ctx->VB->MonoColor = GL_FALSE;
}