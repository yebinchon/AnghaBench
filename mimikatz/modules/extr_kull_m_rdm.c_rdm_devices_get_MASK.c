#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int Size; int VendorID; int ProductID; } ;
struct TYPE_12__ {int cbSize; scalar_t__ hDevice; struct TYPE_12__* next; int /*<<< orphan*/  DevicePath; scalar_t__ id; TYPE_4__ hidAttributes; int /*<<< orphan*/  hidCaps; } ;
struct TYPE_11__ {int cbSize; } ;
typedef  int /*<<< orphan*/  SP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef  TYPE_1__ SP_DEVICE_INTERFACE_DATA ;
typedef  int /*<<< orphan*/  RDM_DEVICE ;
typedef  TYPE_2__* PSP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef  TYPE_2__* PRDM_DEVICE ;
typedef  int /*<<< orphan*/  PHIDP_PREPARSED_DATA ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_4__ HIDD_ATTRIBUTES ;
typedef  scalar_t__ HDEVINFO ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DIGCF_DEVICEINTERFACE ; 
 int DIGCF_PRESENT ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FILE_READ_DATA ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_WRITE_DATA ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (scalar_t__,TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

BOOL FUNC18(PRDM_DEVICE *devices, DWORD *count)
{
	PRDM_DEVICE *next = devices;
	GUID guidHid;
	HDEVINFO hDevInfo;
	SP_DEVICE_INTERFACE_DATA DeviceInterfaceData;
	BOOL enumStatus;
	DWORD enumIndex, dwRequired, id = 0;
	PSP_DEVICE_INTERFACE_DETAIL_DATA DeviceInterfaceDetailData;
	HANDLE deviceHandle;
	HIDD_ATTRIBUTES attributes;
	PHIDP_PREPARSED_DATA PreparsedData;
	NTSTATUS status;

	*next = NULL;
	FUNC5(&guidHid);
	hDevInfo = FUNC15(&guidHid, NULL, NULL, DIGCF_DEVICEINTERFACE | DIGCF_PRESENT);
	if(hDevInfo != INVALID_HANDLE_VALUE)
	{
		for(enumIndex = 0, enumStatus = TRUE; enumStatus; enumIndex++)
		{
			DeviceInterfaceData.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
			if((enumStatus = FUNC14(hDevInfo, NULL, &guidHid, enumIndex, &DeviceInterfaceData)))
			{
				dwRequired = 0;
				if(!FUNC16(hDevInfo, &DeviceInterfaceData, NULL, 0, &dwRequired, NULL) && (FUNC2() == ERROR_INSUFFICIENT_BUFFER))
				{
					if((DeviceInterfaceDetailData = (PSP_DEVICE_INTERFACE_DETAIL_DATA) FUNC8(LPTR, dwRequired)))
					{
						DeviceInterfaceDetailData->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
						if(FUNC16(hDevInfo, &DeviceInterfaceData, DeviceInterfaceDetailData, dwRequired, &dwRequired, NULL))
						{
							deviceHandle = FUNC1(DeviceInterfaceDetailData->DevicePath, 0, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
							if(deviceHandle != INVALID_HANDLE_VALUE)
							{
								attributes.Size = sizeof(HIDD_ATTRIBUTES);
								if(FUNC4(deviceHandle, &attributes))
								{
									if((attributes.VendorID == 0xffff) && (attributes.ProductID == 0x0035))
									{
										if((*next = (PRDM_DEVICE) FUNC8(LPTR, sizeof(RDM_DEVICE))))
										{
											if(FUNC6(deviceHandle, &PreparsedData))
											{
												status = FUNC7(PreparsedData, &(*next)->hidCaps);
												if(!FUNC10(status))
													FUNC11(L"HidP_GetCaps (%08x)\n", status);
												FUNC3(PreparsedData);
											}
											(*next)->DevicePath = FUNC17(DeviceInterfaceDetailData->DevicePath);
											(*next)->hidAttributes = attributes;
											(*next)->id = id;
											(*next)->hDevice = FUNC1(DeviceInterfaceDetailData->DevicePath, FILE_READ_DATA | FILE_WRITE_DATA, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);

											if((*next)->hDevice && ((*next)->hDevice != INVALID_HANDLE_VALUE))
											{
												next = &(*next)->next;
												id++;
											}
											else
											{
												if(FUNC2() != ERROR_ACCESS_DENIED)
													FUNC12(L"CreateFile (hDevice)");
												*next = (PRDM_DEVICE) FUNC9(*next);
											}
										}
									}
								}
								FUNC0(deviceHandle);
							}
							else FUNC12(L"CreateFile (deviceHandle)");
						}
						FUNC9(DeviceInterfaceDetailData);
					}
				}
			}
		}
		FUNC13(hDevInfo);
	}
	else FUNC12(L"SetupDiGetClassDevs");

	if(count)
		*count = id;
	return (id > 0);
}