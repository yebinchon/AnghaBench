#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
struct nk_color {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  memory_dc; } ;
struct TYPE_5__ {int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_2__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,short,short,unsigned short,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ gdi ; 

__attribute__((used)) static void
FUNC5(short x, short y, unsigned short w, unsigned short h,
    struct nk_image img, struct nk_color col)
{
    HBITMAP hbm = (HBITMAP)img.handle.ptr;
    HDC     hDCBits;
    BITMAP  bitmap;
    
    if (!gdi.memory_dc || !hbm)
        return;
    
    hDCBits = FUNC0(gdi.memory_dc);
    FUNC2(hbm, sizeof(BITMAP), (LPSTR)&bitmap);
    FUNC3(hDCBits, hbm);
    FUNC4(gdi.memory_dc, x, y, w, h, hDCBits, 0, 0, bitmap.bmWidth, bitmap.bmHeight, SRCCOPY);
    FUNC1(hDCBits);
}