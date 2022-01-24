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
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC2 (struct varlena const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct varlena const*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static GBT_VARKEY *
FUNC5(const struct varlena *u)
{
	int32		lowersize = FUNC2(u);
	GBT_VARKEY *r;

	r = (GBT_VARKEY *) FUNC4(lowersize + VARHDRSZ);
	FUNC3(FUNC1(r), u, lowersize);
	FUNC0(r, lowersize + VARHDRSZ);

	return r;
}