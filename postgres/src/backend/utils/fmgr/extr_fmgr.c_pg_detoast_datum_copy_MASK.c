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
struct varlena {int dummy; } ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC1 (struct varlena*) ; 
 struct varlena* FUNC2 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC3 (struct varlena*,struct varlena*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

struct varlena *
FUNC5(struct varlena *datum)
{
	if (FUNC0(datum))
		return FUNC2(datum);
	else
	{
		/* Make a modifiable copy of the varlena object */
		Size		len = FUNC1(datum);
		struct varlena *result = (struct varlena *) FUNC4(len);

		FUNC3(result, datum, len);
		return result;
	}
}