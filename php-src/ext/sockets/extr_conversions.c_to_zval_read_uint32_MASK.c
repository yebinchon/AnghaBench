#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  res_context ;
typedef  int /*<<< orphan*/  ival ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int) ; 

__attribute__((used)) static void FUNC2(const char *data, zval *zv, res_context *ctx)
{
	uint32_t ival;
	FUNC1(&ival, data, sizeof(ival));

	FUNC0(zv, (zend_long)ival);
}