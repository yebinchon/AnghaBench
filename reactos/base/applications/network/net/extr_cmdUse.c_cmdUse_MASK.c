#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {char* lpLocalName; char* lpRemoteName; int /*<<< orphan*/ * lpProvider; int /*<<< orphan*/  dwType; } ;
typedef  TYPE_1__ NETRESOURCE ;
typedef  char* LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ CONNECT_LOCALDRIVE ; 
 int CONNECT_REDIRECT ; 
 int CONNECT_UPDATE_PROFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IDS_USE_NOW_CONNECTED ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  RESOURCETYPE_DISK ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,scalar_t__*,scalar_t__*) ; 
 char FUNC12 (char) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 char* FUNC15 (char*,char*) ; 

INT
FUNC16(
    INT argc,
    WCHAR **argv)
{
    DWORD Status, Len, Delete;

    if (argc == 2)
    {
        Status = FUNC2(NULL);
        if (Status == NO_ERROR)
            FUNC7(ERROR_SUCCESS);
        else
            FUNC6(Status);

        return 0;
    }
    else if (argc == 3)
    {
        if (!FUNC9(argv[2]))
        {
            FUNC8(3952, L"DeviceName");
            return 1;
        }

        Status = FUNC2(argv[2]);
        if (Status == NO_ERROR)
            FUNC7(ERROR_SUCCESS);
        else
            FUNC6(Status);

        return 0;
    }

    Delete = 0;
    if (FUNC13(argv[2], L"/DELETE") == 0)
    {
        Delete = 3;
    }
    else
    {
        if ((argv[2][0] != '*' && argv[2][1] != 0) &&
            !FUNC9(argv[2]))
        {
            FUNC8(3952, L"DeviceName");
            return 1;
        }
    }

    if (FUNC13(argv[3], L"/DELETE") == 0)
    {
        Delete = 2;
    }

    if (Delete != 0)
    {
        if (!FUNC9(argv[Delete]) || argv[Delete][0] == L'*')
        {
            FUNC8(3952, L"DeviceName");
            return 1;
        }

        Status = FUNC10(argv[Delete], CONNECT_UPDATE_PROFILE, FALSE);
        if (Status != NO_ERROR)
            FUNC6(Status);

        return Status;
    }
    else
    {
        BOOL Persist = FALSE;
        NETRESOURCE lpNet;
        WCHAR Access[256];
        DWORD OutFlags = 0, Size = FUNC0(Access);

        Len = FUNC14(argv[3]);
        if (Len < 4)
        {
            FUNC8(3952, L"Name");
            return 1;
        }

        if (argv[3][0] != L'\\' || argv[3][1] != L'\\')
        {
            FUNC8(3952, L"Name");
            return 1;
        }

        if (argc > 4)
        {
            LPWSTR Cpy;
            Len = FUNC14(argv[4]);
            if (Len > 12)
            {
                Cpy = FUNC4(FUNC3(), 0, (Len + 1) * sizeof(WCHAR));
                if (Cpy)
                {
                    INT i;
                    for (i = 0; i < Len; ++i)
                        Cpy[i] = FUNC12(argv[4][i]);

                    if (FUNC15(Cpy, L"/PERSISTENT:") == Cpy)
                    {
                        LPWSTR Arg = Cpy + 12;
                        if (Len == 14 && Arg[0] == 'N' && Arg[1] == 'O')
                        {
                            Persist = FALSE;
                        }
                        else if (Len == 15 && Arg[0] == 'Y' && Arg[1] == 'E' && Arg[2] == 'S')
                        {
                            Persist = TRUE;
                        }
                        else
                        {
                            FUNC5(FUNC3(), 0, Cpy);
                            FUNC8(3952, L"Persistent");
                            return 1;
                        }
                    }
                    FUNC5(FUNC3(), 0, Cpy);
                }
            }

        }

        lpNet.dwType = RESOURCETYPE_DISK;
        lpNet.lpLocalName = (argv[2][0] != L'*') ? argv[2] : NULL;
        lpNet.lpRemoteName = argv[3];
        lpNet.lpProvider = NULL;

        Status = FUNC11(NULL, &lpNet, NULL, NULL, CONNECT_REDIRECT | (Persist ? CONNECT_UPDATE_PROFILE : 0), Access, &Size, &OutFlags);
        if (argv[2][0] == L'*' && Status == NO_ERROR && OutFlags == CONNECT_LOCALDRIVE)
            FUNC1(StdOut, IDS_USE_NOW_CONNECTED, argv[3], Access);
        else if (Status != NO_ERROR)
            FUNC6(Status);

        return Status;
    }
}