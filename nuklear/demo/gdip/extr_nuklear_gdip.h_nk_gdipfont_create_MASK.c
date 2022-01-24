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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  REAL ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  TYPE_1__ GdipFont ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  UnitPixel ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 

GdipFont*
FUNC6(const char *name, int size)
{
    GdipFont *font = (GdipFont*)FUNC5(1, sizeof(GdipFont));
    GpFontFamily *family;

    int wsize = FUNC3(CP_UTF8, 0, name, -1, NULL, 0);
    WCHAR* wname = (WCHAR*)FUNC4((wsize + 1) * sizeof(wchar_t));
    FUNC3(CP_UTF8, 0, name, -1, wname, wsize);
    wname[wsize] = 0;

    FUNC1(wname, NULL, &family);
    FUNC0(family, (REAL)size, FontStyleRegular, UnitPixel, &font->handle);
    FUNC2(family);

    return font;
}