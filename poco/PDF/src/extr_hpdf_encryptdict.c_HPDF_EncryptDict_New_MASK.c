#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_8__ {scalar_t__ attr; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  free_fn; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Encrypt_Rec ;
typedef  TYPE_2__* HPDF_EncryptDict ;
typedef  scalar_t__ HPDF_Encrypt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_EncryptDict_OnFree ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_ENCRYPT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

HPDF_EncryptDict
FUNC6  (HPDF_MMgr  mmgr,
                       HPDF_Xref  xref)
{
    HPDF_Encrypt attr;
    HPDF_EncryptDict dict;

    FUNC4((" HPDF_EncryptDict_New\n"));

    dict = FUNC1 (mmgr);
    if (!dict)
        return NULL;

    dict->header.obj_class |= HPDF_OSUBCLASS_ENCRYPT;
    dict->free_fn = HPDF_EncryptDict_OnFree;

    attr = FUNC3 (dict->mmgr, sizeof(HPDF_Encrypt_Rec));
    if (!attr) {
        FUNC0 (dict);
        return NULL;
    }

    dict->attr = attr;
    FUNC2 (attr);

    if (FUNC5 (xref, dict) != HPDF_OK)
        return NULL;

    return dict;
}