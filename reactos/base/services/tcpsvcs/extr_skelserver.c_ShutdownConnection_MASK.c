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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BUF ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_SEND ; 
 scalar_t__ SOCKET_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 

BOOL
FUNC6(SOCKET sock,
                   BOOL bRec)
{
    WCHAR logBuf[256];

    /* Disallow any further data sends.  This will tell the other side
       that we want to go away now.  If we skip this step, we don't
       shut the connection down nicely. */
    if (FUNC4(sock, SD_SEND) == SOCKET_ERROR)
    {
        FUNC0(L"Error in shutdown()", FUNC1(), 0, LOG_ERROR);
        return FALSE;
    }

      /* Receive any extra data still sitting on the socket
         before we close it */
    if (bRec)
    {
        CHAR readBuffer[BUF];
        INT ret;

        do
        {
            ret = FUNC3(sock, readBuffer, BUF, 0);
            if (ret >= 0)
            {
                FUNC5(logBuf, L"FYI, received %d unexpected bytes during shutdown", ret);
                FUNC0(logBuf, 0, 0, LOG_FILE);
            }
        } while (ret > 0);
    }

    FUNC2(sock);

    return TRUE;
}