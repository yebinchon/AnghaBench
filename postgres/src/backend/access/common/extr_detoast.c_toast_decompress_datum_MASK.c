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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct varlena*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct varlena*) ; 
 scalar_t__ FUNC3 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC5 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC6 (struct varlena*) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static struct varlena *
FUNC10(struct varlena *attr)
{
	struct varlena *result;

	FUNC0(FUNC5(attr));

	result = (struct varlena *)
		FUNC8(FUNC3(attr) + VARHDRSZ);
	FUNC1(result, FUNC3(attr) + VARHDRSZ);

	if (FUNC9(FUNC2(attr),
						FUNC4(attr),
						FUNC6(result),
						FUNC3(attr), true) < 0)
		FUNC7(ERROR, "compressed data is corrupted");

	return result;
}