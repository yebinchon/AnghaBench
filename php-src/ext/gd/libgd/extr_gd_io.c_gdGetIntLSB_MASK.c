#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int (* getC ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ gdIOCtx ;

/* Variables and functions */
 unsigned int EOF ; 
 unsigned int FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 

int FUNC4(signed int *result, gdIOCtx *ctx)
{
	unsigned int c;
	unsigned int r = 0;

	c = (ctx->getC) (ctx);
	if (c == EOF) {
		return 0;
	}
	r |= (c << 24);
	r >>= 8;

	c = (ctx->getC) (ctx);
	if (c == EOF) {
		return 0;
	}
	r |= (c << 24);
	r >>= 8;

	c = (ctx->getC) (ctx);
	if (c == EOF) {
		return 0;
	}
	r |= (c << 24);
	r >>= 8;

	c = (ctx->getC) (ctx);
	if (c == EOF) {
		return 0;
	}
	r |= (c << 24);

	if (result) {
		*result = (signed int)r;
	}

	return 1;
}