#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
struct TYPE_6__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__ HPDF_Point3D ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_Array ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 

HPDF_STATUS
FUNC4(HPDF_Dict dict, const char* key, HPDF_Point3D point)
{
	HPDF_Array array;
	HPDF_STATUS ret = HPDF_OK;
	array = FUNC1 (dict->mmgr);
	if (!array)
		return FUNC3 ( dict->error);

	if (FUNC2 (dict, key, array) != HPDF_OK)
		return FUNC3 ( dict->error);

	ret += FUNC0(array, point.x);
	ret += FUNC0(array, point.y);
	ret += FUNC0(array, point.z);

	return ret;
}