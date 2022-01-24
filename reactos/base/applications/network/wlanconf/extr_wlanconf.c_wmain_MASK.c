#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IP_ADAPTER_INDEX_MAP ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  IDS_NO_WLAN_ADAPTER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ bConnect ; 
 scalar_t__ bDisconnect ; 
 scalar_t__ bScan ; 

int FUNC11(int argc, WCHAR *argv[])
{
    HANDLE hAdapter;
    IP_ADAPTER_INDEX_MAP IpInfo;

    /* Initialize the Console Standard Streams */
    FUNC1();

    if (!FUNC6(argc, argv))
        return -1;

    if (!FUNC5(&hAdapter, &IpInfo))
    {
        FUNC2(StdOut, IDS_NO_WLAN_ADAPTER);
        return -1;
    }

    if (bScan)
    {
        if (!FUNC10(hAdapter))
        {
            FUNC3(FUNC4());
            FUNC0(hAdapter);
            return -1;
        }
    }
    else if (bDisconnect)
    {
        if (!FUNC8(hAdapter, &IpInfo))
        {
            FUNC3(FUNC4());
            FUNC0(hAdapter);
            return -1;
        }
    }
    else if (bConnect)
    {
        if (!FUNC7(hAdapter))
        {
            FUNC3(FUNC4());
            FUNC0(hAdapter);
            return -1;
        }
    }
    else
    {
        if (!FUNC9(hAdapter))
        {
            FUNC3(FUNC4());
            FUNC0(hAdapter);
            return -1;
        }
    }

    FUNC0(hAdapter);
    return 0;
}