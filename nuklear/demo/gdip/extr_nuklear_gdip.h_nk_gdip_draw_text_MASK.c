#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct nk_color {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  brush; int /*<<< orphan*/  format; int /*<<< orphan*/  memory; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RectF ;
typedef  TYPE_2__ GdipFont ;
typedef  int /*<<< orphan*/  FLOAT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nk_color) ; 
 TYPE_4__ gdip ; 

__attribute__((used)) static void
FUNC5(short x, short y, unsigned short w, unsigned short h,
    const char *text, int len, GdipFont *font, struct nk_color cbg, struct nk_color cfg)
{
    int wsize;
    WCHAR* wstr;
    RectF layout = { (FLOAT)x, (FLOAT)y, (FLOAT)w, (FLOAT)h };

    if(!text || !font || !len) return;

    wsize = FUNC2(CP_UTF8, 0, text, len, NULL, 0);
    wstr = (WCHAR*)FUNC3(wsize * sizeof(wchar_t));
    FUNC2(CP_UTF8, 0, text, len, wstr, wsize);

    FUNC1(gdip.brush, FUNC4(cfg));
    FUNC0(gdip.memory, wstr, wsize, font->handle, &layout, gdip.format, gdip.brush);
}