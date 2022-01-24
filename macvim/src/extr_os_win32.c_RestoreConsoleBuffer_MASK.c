#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_13__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_10__ {TYPE_7__ dwSize; int /*<<< orphan*/  srWindow; int /*<<< orphan*/  dwCursorPosition; int /*<<< orphan*/  wAttributes; } ;
struct TYPE_12__ {int /*<<< orphan*/  BufferSize; int /*<<< orphan*/ * Buffer; TYPE_1__ Info; int /*<<< orphan*/  IsValid; } ;
struct TYPE_11__ {scalar_t__ Bottom; scalar_t__ Right; scalar_t__ Top; scalar_t__ Left; } ;
typedef  TYPE_2__ SMALL_RECT ;
typedef  TYPE_3__ ConsoleBuffer ;
typedef  TYPE_4__ COORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__,TYPE_2__*) ; 
 int /*<<< orphan*/  g_hConOut ; 

__attribute__((used)) static BOOL
FUNC7(
    ConsoleBuffer   *cb,
    BOOL	    RestoreScreen)
{
    COORD BufferCoord;
    SMALL_RECT WriteRegion;

    if (cb == NULL || !cb->IsValid)
	return FALSE;

    /*
     * Before restoring the buffer contents, clear the current buffer, and
     * restore the cursor position and window information.  Doing this now
     * prevents old buffer contents from "flashing" onto the screen.
     */
    if (RestoreScreen)
	FUNC0(cb->Info.wAttributes);

    FUNC1(cb->Info.dwSize, TRUE);
    if (!FUNC3(g_hConOut, cb->Info.dwSize))
	return FALSE;
    if (!FUNC4(g_hConOut, cb->Info.wAttributes))
	return FALSE;

    if (!RestoreScreen)
    {
	/*
	 * No need to restore the screen buffer contents, so we're done.
	 */
	return TRUE;
    }

    if (!FUNC2(g_hConOut, cb->Info.dwCursorPosition))
	return FALSE;
    if (!FUNC5(g_hConOut, TRUE, &cb->Info.srWindow))
	return FALSE;

    /*
     * Restore the screen buffer contents.
     */
    if (cb->Buffer != NULL)
    {
	BufferCoord.X = 0;
	BufferCoord.Y = 0;
	WriteRegion.Left = 0;
	WriteRegion.Top = 0;
	WriteRegion.Right = cb->Info.dwSize.X - 1;
	WriteRegion.Bottom = cb->Info.dwSize.Y - 1;
	if (!FUNC6(g_hConOut,	/* output handle */
		cb->Buffer,			/* our buffer */
		cb->BufferSize,			/* dimensions of our buffer */
		BufferCoord,			/* offset in our buffer */
		&WriteRegion))			/* region to restore */
	{
	    return FALSE;
	}
    }

    return TRUE;
}