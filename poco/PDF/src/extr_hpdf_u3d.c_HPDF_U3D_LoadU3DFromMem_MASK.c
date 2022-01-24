#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_9__ {int /*<<< orphan*/  stream; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  TYPE_2__* HPDF_U3D ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_XOBJECT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

HPDF_U3D
FUNC5	(	HPDF_MMgr          mmgr,
							const HPDF_BYTE   *buf,
							HPDF_UINT		   size,
							HPDF_Xref          xref )
{
	HPDF_Dict image;
	HPDF_STATUS ret = HPDF_OK;

	FUNC3 ((" HPDF_U3D_LoadU3DFromMem\n"));

	image = FUNC0 (mmgr, xref);
	if (!image) {
		return NULL;
	}

	image->header.obj_class |= HPDF_OSUBCLASS_XOBJECT;
	ret = FUNC1 (image, "Type", "XObject");
	if (ret != HPDF_OK) {
		FUNC2(image);
		return NULL;
	}

	ret = FUNC1 (image, "Subtype", "Image");
	if (ret != HPDF_OK) {
		FUNC2(image);
		return NULL;
	}

	if (FUNC4 (image->stream, buf, size) != HPDF_OK) {
		FUNC2(image);
		return NULL;
	}

	return image;
}