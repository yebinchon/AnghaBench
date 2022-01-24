#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ColorMaterialBitmask; int /*<<< orphan*/  ColorMaterialEnabled; } ;
struct TYPE_8__ {void** ByteColor; } ;
struct TYPE_12__ {TYPE_4__* VB; TYPE_3__ Light; TYPE_2__* Visual; TYPE_1__ Current; } ;
struct TYPE_11__ {int /*<<< orphan*/  MonoColor; } ;
struct TYPE_9__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_5__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,float,float) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5( GLcontext *ctx,
                    GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha )
{
   GLfloat color[4];
   ctx->Current.ByteColor[0] = FUNC3(FUNC2(red  , 0.0F, 1.0F) * ctx->Visual->RedScale);
   ctx->Current.ByteColor[1] = FUNC3(FUNC2(green, 0.0F, 1.0F) * ctx->Visual->GreenScale);
   ctx->Current.ByteColor[2] = FUNC3(FUNC2(blue , 0.0F, 1.0F) * ctx->Visual->BlueScale);
   ctx->Current.ByteColor[3] = FUNC3(FUNC2(alpha, 0.0F, 1.0F) * ctx->Visual->AlphaScale);
   /* update material */
   FUNC0( ctx->Light.ColorMaterialEnabled );
   FUNC1( color, red, green, blue, alpha );
   FUNC4( ctx, ctx->Light.ColorMaterialBitmask, color );
   ctx->VB->MonoColor = GL_FALSE;
}