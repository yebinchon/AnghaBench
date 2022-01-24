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
struct TYPE_7__ {int /*<<< orphan*/  (* ReadColorPixels ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int RasterMask; TYPE_1__ Driver; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLint ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int ALPHABUF_BIT ; 
 int PB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3( GLcontext* ctx,
                      GLuint n, const GLint x[], const GLint y[],
		      GLubyte red[], GLubyte green[],
		      GLubyte blue[], GLubyte alpha[],
		      GLubyte mask[] )
{
   GLubyte rdest[PB_SIZE], gdest[PB_SIZE], bdest[PB_SIZE], adest[PB_SIZE];

   /* Read pixels from current color buffer */
   (*ctx->Driver.ReadColorPixels)( ctx, n, x, y, rdest, gdest, bdest, adest, mask );
   if (ctx->RasterMask & ALPHABUF_BIT) {
      FUNC1( ctx, n, x, y, adest, mask );
   }

   FUNC0( ctx, n, mask, red, green, blue, alpha, rdest, gdest, bdest, adest );
}