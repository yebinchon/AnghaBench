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
typedef  int /*<<< orphan*/  zend_resource ;
typedef  int /*<<< orphan*/  z_stream ;
struct TYPE_2__ {int /*<<< orphan*/ * inflateDict; } ;
typedef  TYPE_1__ php_zlib_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  le_inflate ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(zend_resource *res)
{
	z_stream *ctx = FUNC2(res, NULL, le_inflate);
	if (((php_zlib_context *) ctx)->inflateDict) {
		FUNC0(((php_zlib_context *) ctx)->inflateDict);
	}
	FUNC1(ctx);
	FUNC0(ctx);
}