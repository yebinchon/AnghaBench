#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmp ;
struct TYPE_9__ {int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
struct TYPE_8__ {int /*<<< orphan*/  hbmColor; int /*<<< orphan*/  hbmMask; } ;
struct TYPE_7__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ ICONINFO ;
typedef  int /*<<< orphan*/  HICON ;
typedef  int BOOL ;
typedef  TYPE_3__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 

__attribute__((used)) static BOOL FUNC3( HICON handle, SIZE *size )
{
    ICONINFO info;
    BITMAP bmp;
    int ret;

    if (!FUNC1(handle, &info))
        return FALSE;

    ret = FUNC2(info.hbmColor, sizeof(bmp), &bmp);
    if (ret)
    {
        size->cx = bmp.bmWidth;
        size->cy = bmp.bmHeight;
    }

    FUNC0(info.hbmMask);
    FUNC0(info.hbmColor);

    return !!ret;
}