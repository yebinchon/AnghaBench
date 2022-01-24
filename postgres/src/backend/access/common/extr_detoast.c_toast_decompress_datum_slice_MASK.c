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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct varlena*,scalar_t__) ; 
 scalar_t__ TOAST_COMPRESS_HDRSZ ; 
 int /*<<< orphan*/  FUNC2 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC3 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC5 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static struct varlena *
FUNC9(struct varlena *attr, int32 slicelength)
{
	struct varlena *result;
	int32		rawsize;

	FUNC0(FUNC3(attr));

	result = (struct varlena *) FUNC7(slicelength + VARHDRSZ);

	rawsize = FUNC8(FUNC2(attr),
							  FUNC5(attr) - TOAST_COMPRESS_HDRSZ,
							  FUNC4(result),
							  slicelength, false);
	if (rawsize < 0)
		FUNC6(ERROR, "compressed data is corrupted");

	FUNC1(result, rawsize + VARHDRSZ);
	return result;
}