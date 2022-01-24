#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t pos; int /*<<< orphan*/  nFH; int /*<<< orphan*/ * zFH; } ;
typedef  TYPE_1__ TAR_MEMBER ;

/* Variables and functions */
 size_t FUNC0 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void const*,int,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(const void *buf, size_t len, TAR_MEMBER *th)
{
	size_t		res;

	if (th->zFH != NULL)
		res = FUNC0(buf, 1, len, th->zFH);
	else
		res = FUNC1(buf, 1, len, th->nFH);

	th->pos += res;
	return res;
}