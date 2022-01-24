#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/ * catalog; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  xref; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Doc ;
typedef  int /*<<< orphan*/ * HPDF_Dict ;
typedef  int /*<<< orphan*/ * HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ HPDF_INVALID_DOCUMENT ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HPDF_STATUS
FUNC12(HPDF_Doc pdf, const char *iccname, HPDF_Dict iccdict)
{
    HPDF_Array intents;
    HPDF_Dict intent;
    HPDF_STATUS ret;
    if (!FUNC9 (pdf))
        return HPDF_INVALID_DOCUMENT;

    /* prepare intent */
    intent = FUNC7 (pdf->mmgr);
    ret = FUNC11 (pdf->xref, intent);
    if ( ret != HPDF_OK) {
        FUNC5(intent);
        return ret;
    }
    ret += FUNC4 (intent, "Type", "OutputIntent");
    ret += FUNC4 (intent, "S", "GTS_PDFA1");
    ret += FUNC3 (intent, "OutputConditionIdentifier", FUNC10 (pdf->mmgr, iccname, NULL));
    ret += FUNC3 (intent, "OutputCondition", FUNC10 (pdf->mmgr, iccname,NULL));
    ret += FUNC3 (intent, "Info", FUNC10 (pdf->mmgr, iccname, NULL));
    ret += FUNC3 (intent, "DestOutputProfile ", iccdict);
    if ( ret != HPDF_OK) {
        FUNC5(intent);
        return ret;
    }

    /* Copied from HPDF_AddIntent - not public function */
    intents = FUNC6 (pdf->catalog, "OutputIntents", HPDF_OCLASS_ARRAY);
    if (intents == NULL) {
        intents = FUNC1 (pdf->mmgr);
        if (intents) {
            HPDF_STATUS ret = FUNC3 (pdf->catalog, "OutputIntents", intents);
            if (ret != HPDF_OK) {
                FUNC2 (&pdf->error);
                return FUNC8 (&pdf->error);
            }
        }
    }

    FUNC0(intents,intent);
    return FUNC8 (&pdf->error);
}