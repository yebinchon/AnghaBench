#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gdIOCtx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ fileIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1 (struct gdIOCtx *ctx, const int pos)
{
	fileIOCtx *fctx;
	fctx = (fileIOCtx *) ctx;

	return (FUNC0 (fctx->f, pos, SEEK_SET) == 0);
}