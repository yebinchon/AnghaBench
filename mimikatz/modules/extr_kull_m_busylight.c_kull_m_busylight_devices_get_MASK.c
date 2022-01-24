#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int Size; } ;
struct TYPE_19__ {scalar_t__ Capabilities; } ;
struct TYPE_16__ {int box_sensivity; int box_timeout; int box_triggertime; } ;
struct TYPE_18__ {int cbSize; scalar_t__ hBusy; int dKeepAliveThread; struct TYPE_18__* next; int /*<<< orphan*/  hKeepAliveThread; int /*<<< orphan*/  DevicePath; scalar_t__ id; TYPE_1__ dpi; TYPE_4__* deviceId; TYPE_6__ hidAttributes; int /*<<< orphan*/  hidCaps; } ;
struct TYPE_17__ {int cbSize; } ;
typedef  int /*<<< orphan*/  SP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef  TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef  TYPE_3__* PSP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  TYPE_4__* PCBUSYLIGHT_DEVICE_ID ;
typedef  TYPE_3__* PBUSYLIGHT_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_6__ HIDD_ATTRIBUTES ;
typedef  scalar_t__ HDEVINFO ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BUSYLIGHT_DEVICE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DIGCF_DEVICEINTERFACE ; 
 int DIGCF_PRESENT ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FILE_READ_DATA ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_WRITE_DATA ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (scalar_t__,TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  kull_m_busylight_keepAliveThread ; 

BOOL FUNC20(PBUSYLIGHT_DEVICE *devices, DWORD *count, DWORD mask, BOOL bAutoThread)
{
	PBUSYLIGHT_DEVICE *next = devices;
	GUID guidHid;
	HDEVINFO hDevInfo;
	SP_DEVICE_INTERFACE_DATA DeviceInterfaceData;
	BOOL enumStatus;
	DWORD enumIndex, dwRequired, id = 0;
	PSP_DEVICE_INTERFACE_DETAIL_DATA DeviceInterfaceDetailData;
	HANDLE deviceHandle;
	HIDD_ATTRIBUTES attributes;
	PCBUSYLIGHT_DEVICE_ID deviceId;
	PHIDP_PREPARSED_DATA PreparsedData;
	NTSTATUS status;

	*next = NULL;
	FUNC6(&guidHid);
	hDevInfo = FUNC16(&guidHid, NULL, NULL, DIGCF_DEVICEINTERFACE | DIGCF_PRESENT);
	if(hDevInfo != INVALID_HANDLE_VALUE)
	{
		for(enumIndex = 0, enumStatus = TRUE; enumStatus; enumIndex++)
		{
			DeviceInterfaceData.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
			if((enumStatus = FUNC15(hDevInfo, NULL, &guidHid, enumIndex, &DeviceInterfaceData)))
			{
				dwRequired = 0;
				if(!FUNC17(hDevInfo, &DeviceInterfaceData, NULL, 0, &dwRequired, NULL) && (FUNC3() == ERROR_INSUFFICIENT_BUFFER))
				{
					if((DeviceInterfaceDetailData = (PSP_DEVICE_INTERFACE_DETAIL_DATA) FUNC9(LPTR, dwRequired)))
					{
						DeviceInterfaceDetailData->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
						if(FUNC17(hDevInfo, &DeviceInterfaceData, DeviceInterfaceDetailData, dwRequired, &dwRequired, NULL))
						{
							deviceHandle = FUNC1(DeviceInterfaceDetailData->DevicePath, 0, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
							if(deviceHandle != INVALID_HANDLE_VALUE)
							{
								attributes.Size = sizeof(HIDD_ATTRIBUTES);
								if(FUNC5(deviceHandle, &attributes))
								{
									if((deviceId = FUNC19(&attributes)))
									{
										if((deviceId->Capabilities & mask) == mask)
										{
											if((*next = (PBUSYLIGHT_DEVICE) FUNC9(LPTR, sizeof(BUSYLIGHT_DEVICE))))
											{
												if(FUNC7(deviceHandle, &PreparsedData))
												{
													status = FUNC8(PreparsedData, &(*next)->hidCaps);
													if(!FUNC11(status))
														FUNC12(L"HidP_GetCaps (%08x)\n", status);
													FUNC4(PreparsedData);
												}
												(*next)->DevicePath = FUNC18(DeviceInterfaceDetailData->DevicePath);
												(*next)->hidAttributes = attributes;
												(*next)->deviceId = deviceId;
												(*next)->dpi.box_sensivity = 4;
												(*next)->dpi.box_timeout = 4;
												(*next)->dpi.box_triggertime = 85;
												(*next)->id = id;
												(*next)->hBusy = FUNC1(DeviceInterfaceDetailData->DevicePath, FILE_READ_DATA | FILE_WRITE_DATA, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
												
												if((*next)->hBusy && ((*next)->hBusy != INVALID_HANDLE_VALUE))
												{
													if(bAutoThread)
													{
														(*next)->dKeepAliveThread = 5000;
														if(((*next)->hKeepAliveThread = FUNC2(NULL, 0, kull_m_busylight_keepAliveThread, *next, 0, NULL)))
														{
															next = &(*next)->next;
															id++;
														}
														else
														{
															FUNC13(L"CreateThread (hKeepAliveThread)");
															FUNC0((*next)->hBusy);
															FUNC10(*next);
														}
													}
													else
													{
														next = &(*next)->next;
														id++;
													}
												}
												else
												{
													FUNC13(L"CreateFile (hBusy)");
													*next = (PBUSYLIGHT_DEVICE) FUNC10(*next);
												}
											}
										}
									}
								}
								FUNC0(deviceHandle);
							}
							else FUNC13(L"CreateFile (deviceHandle)");
						}
						FUNC10(DeviceInterfaceDetailData);
					}
				}
			}
		}
		FUNC14(hDevInfo);
	}
	else FUNC13(L"SetupDiGetClassDevs");

	if(count)
		*count = id;
	return (id > 0);
}