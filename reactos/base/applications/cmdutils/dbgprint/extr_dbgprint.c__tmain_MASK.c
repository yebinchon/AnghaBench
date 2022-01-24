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
typedef  char TCHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

int FUNC18(int argc, TCHAR ** argv)
{
    TCHAR * buf;
    size_t bufsize;
    int i;
    size_t offset;

    bufsize = 0;
    for(i = 1; i < argc; i++)
    {
        bufsize += FUNC9(argv[i]) + 1;
    }

    if (!bufsize)
    {
        return -1;
    }

    if (FUNC11(argv[1], "--winetest") && (argc == 3))
    {
        char   psBuffer[128];
        char   psBuffer2[128];
        char   *nlptr2;
        char   cmd[255];
        char   test[300];
        FILE   *pPipe;
        FILE   *pPipe2;

        /* get available tests */
        FUNC17(cmd, argv[2]);
        FUNC15(cmd, " --list");
        pPipe = FUNC12(cmd, "r");
        if (pPipe != NULL)
        {
            while(FUNC13(psBuffer, 128, pPipe))
            {
                if (psBuffer[0] == ' ')
                {
                    FUNC17(cmd, argv[2]);
                    FUNC15(cmd, " ");
                    FUNC15(cmd, psBuffer+4);
                    /* run the current test */
                    FUNC17(test, "\n\nRunning ");
                    FUNC15(test, cmd);
                    FUNC4(test);
                    pPipe2 = FUNC7(cmd, "r");
                    if (pPipe2 != NULL)
                    {
                        while(FUNC13(psBuffer2, 128, pPipe2))
                        {
                            nlptr2 = FUNC16(psBuffer2, '\n');
                            if (nlptr2)
                                *nlptr2 = '\0';
                            FUNC14(psBuffer2);
                            if (nlptr2)
                                *nlptr2 = '\n';
                            FUNC4(psBuffer2);
                        }
                        FUNC6(pPipe2);
                    }
                }
            }
            FUNC6(pPipe);
        }
    }
    else if (FUNC11(argv[1], "--process") && (argc == 3))
    {
        char   psBuffer[128];
        FILE   *pPipe;

        pPipe = FUNC12(argv[2], "r");
        if (pPipe != NULL)
        {
            while(FUNC13(psBuffer, 128, pPipe))
            {
                FUNC14(psBuffer);
                FUNC4(psBuffer);
            }
            FUNC6(pPipe);
        }
    }
    else
    {
        buf = FUNC1(FUNC0(), 0, (bufsize+1) * sizeof(TCHAR));
        if (!buf)
        {
            return -1;
        }

        offset = 0;
        for(i = 1; i < argc; i++)
        {
            size_t length = FUNC9(argv[i]);
            FUNC10(&buf[offset], argv[i], length);
            offset += length;
            if (i + 1 < argc)
            {
                buf[offset] = FUNC5(' ');
            }
            else
            {
                buf[offset] = FUNC5('\n');
                buf[offset+1] = FUNC5('\0');
            }
            offset++;
        }
        FUNC8(buf);
        FUNC3(buf);
        FUNC2(FUNC0(), 0, buf);
    }
    return 0;
}