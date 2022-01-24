#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pbData; int /*<<< orphan*/  cbData; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  PKULL_M_DPAPI_BLOB ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_1__ DATA_BLOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[])
{
	DATA_BLOB dataIn, dataOut;
	PKULL_M_DPAPI_BLOB blob;
	PCWSTR outfile, infile;
	PWSTR description = NULL;

	if(FUNC9(argc, argv, L"in", &infile, NULL))
	{
		if(FUNC7(infile, &dataIn.pbData, &dataIn.cbData))
		{
			if((blob = FUNC4(dataIn.pbData)))
			{
				FUNC6(0, blob);

				if(FUNC3(dataIn.pbData, dataIn.cbData, &description, argc, argv, NULL, 0, (LPVOID *) &dataOut.pbData, &dataOut.cbData, NULL))
				{
					if(description)
					{
						FUNC2(L"description : %s\n", description);
						FUNC0(description);
					}

					if(FUNC9(argc, argv, L"out", &outfile, NULL))
					{
						if(FUNC8(outfile, dataOut.pbData, dataOut.cbData))
							FUNC2(L"Write to file \'%s\' is OK\n", outfile);
					}
					else
					{
						FUNC2(L"data: ");
						FUNC10(dataOut.pbData, dataOut.cbData);
						FUNC2(L"\n");
					}
					FUNC0(dataOut.pbData);
				}
				FUNC5(blob);
			}
			FUNC0(dataIn.pbData);
		}
		else FUNC1(L"kull_m_file_readData");
	}
	return STATUS_SUCCESS;
}