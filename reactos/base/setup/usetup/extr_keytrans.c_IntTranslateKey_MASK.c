#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ AsciiChar; } ;
struct TYPE_12__ {int wRepeatCount; TYPE_1__ uChar; int /*<<< orphan*/  dwControlKeyState; scalar_t__ bKeyDown; scalar_t__ wVirtualKeyCode; scalar_t__ wVirtualScanCode; } ;
struct TYPE_11__ {int Flags; scalar_t__ MakeCode; } ;
typedef  TYPE_2__* PKEYBOARD_INPUT_DATA ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ KEY_EVENT_RECORD ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ENHANCED_KEY ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int KEY_BREAK ; 
 int KEY_E0 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 

NTSTATUS
FUNC5(HANDLE hConsoleInput, PKEYBOARD_INPUT_DATA InputData, KEY_EVENT_RECORD *Event)
{
	static DWORD dwControlKeyState;

	FUNC4(Event, sizeof(KEY_EVENT_RECORD));

	if (!(InputData->Flags & KEY_BREAK))
		Event->bKeyDown = TRUE;
	else
		Event->bKeyDown = FALSE;

	Event->wRepeatCount = 1;
	Event->wVirtualScanCode = InputData->MakeCode;

	FUNC0("Translating: %x\n", InputData->MakeCode);

	FUNC2(hConsoleInput, &dwControlKeyState, InputData);
	Event->dwControlKeyState = dwControlKeyState;

	if (InputData->Flags & KEY_E0)
		Event->dwControlKeyState |= ENHANCED_KEY;

	Event->wVirtualKeyCode = FUNC3(InputData,
	                                           Event->dwControlKeyState);

	FUNC0("Result: %x\n", Event->wVirtualKeyCode);

	if (Event->bKeyDown) {
		Event->uChar.AsciiChar =
		                   FUNC1(InputData,
		                                     Event->dwControlKeyState);
		FUNC0("Char: %x\n", Event->uChar.AsciiChar);
	} else {
		Event->uChar.AsciiChar = 0;
	}

	return STATUS_SUCCESS;
}