#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  def_encoder; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  int HPDF_PageNumStyle ;
typedef  int /*<<< orphan*/  HPDF_INT ;
typedef  TYPE_1__* HPDF_Doc ;
typedef  int /*<<< orphan*/ * HPDF_Dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
#define  HPDF_PAGE_NUM_STYLE_DECIMAL 132 
#define  HPDF_PAGE_NUM_STYLE_LOWER_LETTERS 131 
#define  HPDF_PAGE_NUM_STYLE_LOWER_ROMAN 130 
 int /*<<< orphan*/  HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE ; 
#define  HPDF_PAGE_NUM_STYLE_UPPER_LETTERS 129 
#define  HPDF_PAGE_NUM_STYLE_UPPER_ROMAN 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

HPDF_Dict
FUNC8  (HPDF_Doc             pdf,
                     HPDF_PageNumStyle    style,
                     HPDF_INT             first_page,
                     const char     *prefix)
{
    HPDF_Dict obj = FUNC4 (pdf->mmgr);

    FUNC5 ((" HPDF_PageLabel_New\n"));

    if (!obj)
        return NULL;

    switch (style) {
        case HPDF_PAGE_NUM_STYLE_DECIMAL:
            if (FUNC1 (obj, "S", "D") != HPDF_OK)
                goto Fail;
            break;
        case HPDF_PAGE_NUM_STYLE_UPPER_ROMAN:
            if (FUNC1 (obj, "S", "R") != HPDF_OK)
                goto Fail;
            break;
        case HPDF_PAGE_NUM_STYLE_LOWER_ROMAN:
            if (FUNC1 (obj, "S", "r") != HPDF_OK)
                goto Fail;
            break;
        case HPDF_PAGE_NUM_STYLE_UPPER_LETTERS:
            if (FUNC1 (obj, "S", "A") != HPDF_OK)
                goto Fail;
            break;
        case HPDF_PAGE_NUM_STYLE_LOWER_LETTERS:
            if (FUNC1 (obj, "S", "a") != HPDF_OK)
                goto Fail;
            break;
        default:
            FUNC6 (&pdf->error, HPDF_PAGE_NUM_STYLE_OUT_OF_RANGE,
                    (HPDF_STATUS)style);
            goto Fail;
    }

    if (prefix && prefix[0] != 0)
        if (FUNC0 (obj, "P", FUNC7 (pdf->mmgr, prefix,
                    pdf->def_encoder)) != HPDF_OK)
            goto Fail;

    if (first_page != 0)
        if (FUNC2 (obj, "St", first_page) != HPDF_OK)
            goto Fail;

    return obj;

Fail:
    FUNC3 (obj);
    return NULL;
}