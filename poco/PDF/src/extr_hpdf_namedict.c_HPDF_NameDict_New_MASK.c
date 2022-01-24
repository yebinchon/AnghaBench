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
struct TYPE_6__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  TYPE_2__* HPDF_NameDict ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_NAMEDICT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

HPDF_NameDict
FUNC3  (HPDF_MMgr  mmgr,
                    HPDF_Xref  xref)
{
    HPDF_NameDict ndict;

    FUNC1((" HPDF_NameDict_New\n"));

    ndict = FUNC0 (mmgr);
    if (!ndict)
        return NULL;

    if (FUNC2 (xref, ndict) != HPDF_OK)
        return NULL;

    ndict->header.obj_class |= HPDF_OSUBCLASS_NAMEDICT;

    return ndict;
}