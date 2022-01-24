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
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/ * HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_FontDef
FUNC5  (HPDF_MMgr     mmgr,
                       HPDF_Stream   stream,
                       HPDF_UINT     index,
                       HPDF_BOOL     embedding)
{
    HPDF_STATUS ret;
    HPDF_FontDef fontdef;

    FUNC1 ((" HPDF_TTFontDef_Load\n"));

    fontdef = FUNC3 (mmgr);

    if (!fontdef) {
        FUNC2 (stream);
        return NULL;
    }

    ret = FUNC4 (fontdef, stream, index, embedding);
    if (ret != HPDF_OK) {
        FUNC0 (fontdef);
        return NULL;
    }

    return fontdef;
}