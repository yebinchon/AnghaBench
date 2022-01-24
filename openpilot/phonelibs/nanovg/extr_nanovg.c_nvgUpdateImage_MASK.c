#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  userPtr; int /*<<< orphan*/  (* renderUpdateTexture ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned char const*) ;int /*<<< orphan*/  (* renderGetTextureSize ) (int /*<<< orphan*/ ,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef  TYPE_2__ NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned char const*) ; 

void FUNC2(NVGcontext* ctx, int image, const unsigned char* data)
{
	int w, h;
	ctx->params.renderGetTextureSize(ctx->params.userPtr, image, &w, &h);
	ctx->params.renderUpdateTexture(ctx->params.userPtr, image, 0,0, w,h, data);
}