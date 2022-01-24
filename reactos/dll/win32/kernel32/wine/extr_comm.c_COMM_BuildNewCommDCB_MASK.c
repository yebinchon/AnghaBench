#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_6__ {int WriteTotalTimeoutConstant; scalar_t__ WriteTotalTimeoutMultiplier; scalar_t__ ReadTotalTimeoutConstant; scalar_t__ ReadTotalTimeoutMultiplier; scalar_t__ ReadIntervalTimeout; } ;
struct TYPE_5__ {int BaudRate; int /*<<< orphan*/  StopBits; void* fDsrSensitivity; void* fRtsControl; void* fDtrControl; void* fOutxCtsFlow; void* fOutxDsrFlow; void* fInX; void* fOutX; int /*<<< orphan*/  ByteSize; int /*<<< orphan*/  Parity; } ;
typedef  TYPE_1__* LPDCB ;
typedef  char* LPCWSTR ;
typedef  TYPE_2__* LPCOMMTIMEOUTS ;
typedef  void* DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,void**) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ONESTOPBIT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TWOSTOPBITS ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static BOOL FUNC6(LPCWSTR device, LPDCB lpdcb, LPCOMMTIMEOUTS lptimeouts)
{
	DWORD temp;
	BOOL baud = FALSE, stop = FALSE;
	static const WCHAR baudW[] = {'b','a','u','d','=',0};
	static const WCHAR parityW[] = {'p','a','r','i','t','y','=',0};
	static const WCHAR dataW[] = {'d','a','t','a','=',0};
	static const WCHAR stopW[] = {'s','t','o','p','=',0};
	static const WCHAR toW[] = {'t','o','=',0};
	static const WCHAR xonW[] = {'x','o','n','=',0};
	static const WCHAR odsrW[] = {'o','d','s','r','=',0};
	static const WCHAR octsW[] = {'o','c','t','s','=',0};
	static const WCHAR dtrW[] = {'d','t','r','=',0};
	static const WCHAR rtsW[] = {'r','t','s','=',0};
	static const WCHAR idsrW[] = {'i','d','s','r','=',0};

	while(*device)
	{
		while(*device == ' ') device++;

		if(!FUNC5(baudW, device, 5))
		{
			baud = TRUE;
			
			if(!(device = FUNC1(device + 5, &lpdcb->BaudRate)))
				return FALSE;
		}
		else if(!FUNC5(parityW, device, 7))
		{
			if(!(device = FUNC3(device + 7, &lpdcb->Parity)))
				return FALSE;
		}
		else if(!FUNC5(dataW, device, 5))
		{
			if(!(device = FUNC0(device + 5, &lpdcb->ByteSize)))
				return FALSE;
		}
		else if(!FUNC5(stopW, device, 5))
		{
			stop = TRUE;
			
			if(!(device = FUNC4(device + 5, &lpdcb->StopBits)))
				return FALSE;
		}
		else if(!FUNC5(toW, device, 3))
		{
			if(!(device = FUNC2(device + 3, &temp)))
				return FALSE;

			lptimeouts->ReadIntervalTimeout = 0;
			lptimeouts->ReadTotalTimeoutMultiplier = 0;
			lptimeouts->ReadTotalTimeoutConstant = 0;
			lptimeouts->WriteTotalTimeoutMultiplier = 0;
			lptimeouts->WriteTotalTimeoutConstant = temp ? 60000 : 0;
		}
		else if(!FUNC5(xonW, device, 4))
		{
			if(!(device = FUNC2(device + 4, &temp)))
				return FALSE;

			lpdcb->fOutX = temp;
			lpdcb->fInX = temp;
		}
		else if(!FUNC5(odsrW, device, 5))
		{
			if(!(device = FUNC2(device + 5, &temp)))
				return FALSE;

			lpdcb->fOutxDsrFlow = temp;
		}
		else if(!FUNC5(octsW, device, 5))
		{
			if(!(device = FUNC2(device + 5, &temp)))
				return FALSE;

			lpdcb->fOutxCtsFlow = temp;
		}
		else if(!FUNC5(dtrW, device, 4))
		{
			if(!(device = FUNC2(device + 4, &temp)))
				return FALSE;

			lpdcb->fDtrControl = temp;
		}
		else if(!FUNC5(rtsW, device, 4))
		{
			if(!(device = FUNC2(device + 4, &temp)))
				return FALSE;

			lpdcb->fRtsControl = temp;
		}
		else if(!FUNC5(idsrW, device, 5))
		{
			if(!(device = FUNC2(device + 5, &temp)))
				return FALSE;

			/* Win NT sets the fDsrSensitivity member based on the
			   idsr parameter.  Win 9x sets fOutxDsrFlow instead. */
			lpdcb->fDsrSensitivity = temp;
		}
		else
			return FALSE;

		/* After the above parsing, the next character (if not the end of
		   the string) should be a space */
		if(*device && *device != ' ')
			return FALSE;
	}

	/* If stop bits were not specified, a default is always supplied. */
	if(!stop)
	{
		if(baud && lpdcb->BaudRate == 110)
			lpdcb->StopBits = TWOSTOPBITS;
		else
			lpdcb->StopBits = ONESTOPBIT;
	}

	return TRUE;
}