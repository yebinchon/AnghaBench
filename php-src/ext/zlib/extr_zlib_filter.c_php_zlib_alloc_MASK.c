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
typedef  scalar_t__ voidpf ;
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_2__ {int /*<<< orphan*/  persistent; } ;
typedef  TYPE_1__ php_zlib_filter_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static voidpf FUNC1(voidpf opaque, uInt items, uInt size)
{
	return (voidpf)FUNC0(items, size, 0, ((php_zlib_filter_data*)opaque)->persistent);
}