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
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Point3D ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/ * HPDF_3DMeasure ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HPDF_3DMeasure
FUNC5(HPDF_MMgr mmgr,
					  HPDF_Xref xref,
					  HPDF_Point3D    firstanchorpoint,
					  HPDF_Point3D    textanchorpoint
					  )
{
	HPDF_3DMeasure measure;
	HPDF_STATUS ret = HPDF_OK;


	FUNC3((" HPDF_3DC3DMeasure_New\n"));

	measure = FUNC2 (mmgr);
	if (!measure)
		return NULL;

	if (FUNC4 (xref, measure) != HPDF_OK)
		return NULL;

	ret += FUNC1(measure, "A1", firstanchorpoint);
	ret += FUNC1(measure, "TP", textanchorpoint);

	ret += FUNC0 (measure, "Type", "3DMeasure");
	ret += FUNC0 (measure, "Subtype", "3DC");

	if (ret != HPDF_OK)
		return NULL;

	return measure;
}