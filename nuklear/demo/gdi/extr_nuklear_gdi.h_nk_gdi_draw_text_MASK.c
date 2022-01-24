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
struct nk_color {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_1__ GdiFont ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  ETO_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,short,short,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct nk_color) ; 

__attribute__((used)) static void
FUNC7(HDC dc, short x, short y, unsigned short w, unsigned short h,
    const char *text, int len, GdiFont *font, struct nk_color cbg, struct nk_color cfg)
{
    int wsize;
    WCHAR* wstr;

    if(!text || !font || !len) return;

    wsize = FUNC1(CP_UTF8, 0, text, len, NULL, 0);
    wstr = (WCHAR*)FUNC5(wsize * sizeof(wchar_t));
    FUNC1(CP_UTF8, 0, text, len, wstr, wsize);

    FUNC3(dc, FUNC6(cbg));
    FUNC4(dc, FUNC6(cfg));

    FUNC2(dc, font->handle);
    FUNC0(dc, x, y, ETO_OPAQUE, NULL, wstr, wsize, NULL);
}