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
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/ * HPDF_ExData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HPDF_ExData
FUNC4(HPDF_MMgr mmgr,
					   HPDF_Xref xref)
{
	HPDF_ExData exdata;
	HPDF_STATUS ret = HPDF_OK;


	FUNC2((" HPDF_ExData_New\n"));

	exdata = FUNC1 (mmgr);
	if (!exdata)
		return NULL;

	if (FUNC3 (xref, exdata) != HPDF_OK)
		return NULL;

	ret += FUNC0 (exdata, "Type", "ExData");
	ret += FUNC0 (exdata, "Subtype", "3DM");

	if (ret != HPDF_OK)
		return NULL;

	return exdata;
}