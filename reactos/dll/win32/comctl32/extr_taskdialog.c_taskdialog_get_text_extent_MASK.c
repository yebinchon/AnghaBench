#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct taskdialog_template_desc {int /*<<< orphan*/  font; TYPE_1__* taskconfig; int /*<<< orphan*/  dialog_width; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT_PTR ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_6__ {int /*<<< orphan*/  hInstance; } ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COMCTL32_hModule ; 
 int DIALOG_SPACING ; 
 int DT_CALCRECT ; 
 int DT_EXPANDTABS ; 
 int DT_LEFT ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct taskdialog_template_desc const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct taskdialog_template_desc const*,scalar_t__*,scalar_t__*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC10(const struct taskdialog_template_desc *desc, const WCHAR *text,
        BOOL user_resource, SIZE *sz)
{
    RECT rect = { 0, 0, desc->dialog_width - DIALOG_SPACING * 2, 0}; /* padding left and right of the control */
    const WCHAR *textW = NULL;
    static const WCHAR nulW;
    unsigned int length;
    HFONT oldfont;
    HDC hdc;

    if (FUNC2(text))
    {
        if (!(length = FUNC3(user_resource ? desc->taskconfig->hInstance : COMCTL32_hModule,
                (UINT_PTR)text, (WCHAR *)&textW, 0)))
        {
            FUNC6("Failed to load text\n");
            textW = &nulW;
            length = 0;
        }
    }
    else
    {
        textW = text;
        length = FUNC9(textW);
    }

    hdc = FUNC1(0);
    oldfont = FUNC5(hdc, desc->font);

    FUNC7(desc, &rect.right, NULL);
    FUNC0(hdc, textW, length, &rect, DT_LEFT | DT_EXPANDTABS | DT_CALCRECT | DT_WORDBREAK);
    FUNC8(desc, &rect.right, &rect.bottom);

    FUNC5(hdc, oldfont);
    FUNC4(0, hdc);

    sz->cx = rect.right - rect.left;
    sz->cy = rect.bottom - rect.top;
}