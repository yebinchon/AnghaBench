#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  flags; void* attr; TYPE_1__* mmgr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  type; int /*<<< orphan*/  error; int /*<<< orphan*/  sig_bytes; } ;
struct TYPE_10__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Type1FontDefAttr_Rec ;
typedef  void* HPDF_Type1FontDefAttr ;
typedef  TYPE_1__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_FontDef_Rec ;
typedef  TYPE_2__* HPDF_FontDef ;
typedef  TYPE_2__ HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FreeFunc ; 
 int /*<<< orphan*/  HPDF_FONTDEF_SIG_BYTES ; 
 int /*<<< orphan*/  HPDF_FONTDEF_TYPE_TYPE1 ; 
 int /*<<< orphan*/  HPDF_FONT_STD_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

HPDF_FontDef
FUNC4  (HPDF_MMgr  mmgr)
{
    HPDF_FontDef fontdef;
    HPDF_Type1FontDefAttr fontdef_attr;

    FUNC3 ((" HPDF_Type1FontDef_New\n"));

    if (!mmgr)
        return NULL;

    fontdef = FUNC1 (mmgr, sizeof(HPDF_FontDef_Rec));
    if (!fontdef)
        return NULL;

    FUNC2 (fontdef, 0, sizeof (HPDF_FontDef_Rec));
    fontdef->sig_bytes = HPDF_FONTDEF_SIG_BYTES;
    fontdef->mmgr = mmgr;
    fontdef->error = mmgr->error;
    fontdef->type = HPDF_FONTDEF_TYPE_TYPE1;
    fontdef->free_fn = FreeFunc;

    fontdef_attr = FUNC1 (mmgr, sizeof(HPDF_Type1FontDefAttr_Rec));
    if (!fontdef_attr) {
        FUNC0 (fontdef->mmgr, fontdef);
        return NULL;
    }

    fontdef->attr = fontdef_attr;
    FUNC2 ((HPDF_BYTE *)fontdef_attr, 0, sizeof(HPDF_Type1FontDefAttr_Rec));
    fontdef->flags = HPDF_FONT_STD_CHARSET;

    return fontdef;
}