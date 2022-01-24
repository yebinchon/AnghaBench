#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {void* blue; void* green; void* red; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int member_1; int member_3; TYPE_4__ color; int /*<<< orphan*/  AudioByte; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; TYPE_1__ member_2; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;
typedef  void* BYTE ;
typedef  TYPE_2__ BUSYLIGHT_COMMAND_STEP ;

/* Variables and functions */
 TYPE_4__ BUSYLIGHT_COLOR_CYAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUSYLIGHT_MEDIA_JINGLE_IM2 ; 
 int /*<<< orphan*/  BUSYLIGHT_MEDIA_MUTE ; 
 int /*<<< orphan*/  BUSYLIGHT_MEDIA_SOUND_OPENOFFICE ; 
 int /*<<< orphan*/  BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ isBusyLight ; 
 int /*<<< orphan*/  kuhl_m_busylight_devices ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	PCWCHAR szColor;
	DWORD dwColor;
	BUSYLIGHT_COMMAND_STEP mdl = {0, 1, {0, 0, 0}, 1, 0, BUSYLIGHT_MEDIA_MUTE};
	
	mdl.color = BUSYLIGHT_COLOR_CYAN;
	if(isBusyLight)
	{
		mdl.AudioByte = FUNC0(FUNC3(argc, argv, L"sound", NULL, NULL) ? BUSYLIGHT_MEDIA_SOUND_OPENOFFICE : BUSYLIGHT_MEDIA_JINGLE_IM2, BUSYLIGHT_MEDIA_VOLUME_4_MEDIUM);
		if(FUNC3(argc, argv, L"color", &szColor, NULL))
		{
			dwColor = FUNC4(szColor, NULL, 0);
			mdl.color.red   = (BYTE) ((dwColor & 0x00ff0000) >> 16);
			mdl.color.green = (BYTE) ((dwColor & 0x0000ff00) >> 8);
			mdl.color.blue  = (BYTE) (dwColor & 0x000000ff);
		}
		FUNC2(kuhl_m_busylight_devices, &mdl, 1, TRUE);
	}
	else FUNC1(L"No BusyLight\n");
	return STATUS_SUCCESS;
}