#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cached_fstat; int /*<<< orphan*/  sb; int /*<<< orphan*/  no_forced_fstat; } ;
typedef  TYPE_1__ php_stdio_stream_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(php_stdio_stream_data *d, int force)
{
	if (!d->cached_fstat || (force && !d->no_forced_fstat)) {
		int fd;
		int r;

		FUNC0(fd, d);
		r = FUNC1(fd, &d->sb);
		d->cached_fstat = r == 0;

		return r;
	}
	return 0;
}