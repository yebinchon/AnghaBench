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
typedef  int /*<<< orphan*/  zip_int64_t ;
typedef  int /*<<< orphan*/  zend_long ;
struct zip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct zip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_long FUNC2(struct zip *za) /* {{{ */
{
	zip_int64_t num = FUNC1(za, 0);
	return FUNC0(num, ZEND_LONG_MAX);
}