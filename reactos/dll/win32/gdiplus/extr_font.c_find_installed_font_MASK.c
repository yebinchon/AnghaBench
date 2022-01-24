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
struct font_metrics {int /*<<< orphan*/  facename; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  lfFaceName; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ LOGFONTW ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  GpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FontFamilyNotFound ; 
 int /*<<< orphan*/  NotTrueTypeFont ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct font_metrics*) ; 
 int /*<<< orphan*/  is_font_installed_proc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GpStatus FUNC8(const WCHAR *name, struct font_metrics *fm)
{
    LOGFONTW lf;
    HDC hdc = FUNC0(0);
    GpStatus ret = FontFamilyNotFound;

    if(!FUNC4(hdc, name, is_font_installed_proc, (LPARAM)&lf))
    {
        HFONT hfont, old_font;

        FUNC7(fm->facename, lf.lfFaceName);

        hfont = FUNC1(&lf);
        old_font = FUNC5(hdc, hfont);
        ret = FUNC6(hdc, fm) ? Ok : NotTrueTypeFont;
        FUNC5(hdc, old_font);
        FUNC3(hfont);
    }

    FUNC2(hdc);
    return ret;
}