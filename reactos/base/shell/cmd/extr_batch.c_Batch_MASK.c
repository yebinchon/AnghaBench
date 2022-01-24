#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct _SETLOCAL {int dummy; } ;
typedef  int /*<<< orphan*/  fpname ;
struct TYPE_10__ {int* shiftlevel; TYPE_1__* current; int /*<<< orphan*/ * raw_params; int /*<<< orphan*/  params; scalar_t__ bEcho; scalar_t__ mempos; int /*<<< orphan*/ * BatchFilePath; struct _SETLOCAL* setlocal; int /*<<< orphan*/ * RedirList; void* memfree; int /*<<< orphan*/  memsize; scalar_t__ mem; struct TYPE_10__* prev; } ;
struct TYPE_9__ {scalar_t__ Type; int /*<<< orphan*/  Redirections; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ PARSED_COMMAND ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/ * LPFOR_CONTEXT ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  void* BOOL ;
typedef  TYPE_2__ BATCH_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ C_QUIET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FALSE ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_FLAG_SEQUENTIAL_SCAN ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  STRING_BATCH_ERROR ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 void* TRUE ; 
 scalar_t__ FUNC17 (char) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bDisableBatchEcho ; 
 scalar_t__ bEcho ; 
 int /*<<< orphan*/  bExit ; 
 int /*<<< orphan*/  bIgnoreEcho ; 
 TYPE_2__* bc ; 
 int /*<<< orphan*/ * FUNC19 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/ * fc ; 
 int nErrorLevel ; 

INT FUNC23(LPTSTR fullname, LPTSTR firstword, LPTSTR param, PARSED_COMMAND *Cmd)
{
    BATCH_CONTEXT new;
    LPFOR_CONTEXT saved_fc;
    INT i;
    INT ret = 0;
    BOOL same_fn = FALSE;

    HANDLE hFile = 0;
    FUNC15(0);
    if (bc && bc->mem)
    {
        TCHAR fpname[MAX_PATH];
        FUNC12(fullname, sizeof(fpname) / sizeof(TCHAR), fpname, NULL);
        if (FUNC18(bc->BatchFilePath,fpname)==0)
            same_fn=TRUE;
    }
    FUNC16 ("Batch: (\'%s\', \'%s\', \'%s\')  same_fn = %d\n",
        FUNC21(fullname), FUNC21(firstword), FUNC21(param), same_fn);

    if (!same_fn)
    {
        hFile = FUNC7(fullname, GENERIC_READ, FILE_SHARE_WRITE | FILE_SHARE_READ | FILE_SHARE_DELETE, NULL,
                           OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL |
                           FILE_FLAG_SEQUENTIAL_SCAN, NULL);

        if (hFile == INVALID_HANDLE_VALUE)
        {
            FUNC5(STRING_BATCH_ERROR);
            return 1;
        }
    }

    if (bc != NULL && Cmd == bc->current)
    {
        /* Then we are transferring to another batch */
        FUNC3();
        FUNC0(&Cmd->Redirections);
    }
    else
    {
        struct _SETLOCAL *setlocal = NULL;

        if (Cmd == NULL)
        {
            /* This is a CALL. CALL will set errorlevel to our return value, so
             * in order to keep the value of errorlevel unchanged in the case
             * of calling an empty batch file, we must return that same value. */
            ret = nErrorLevel;
        }
        else if (bc)
        {
            /* If a batch file runs another batch file as part of a compound command
             * (e.g. "x.bat & somethingelse") then the first file gets terminated. */

            /* Get its SETLOCAL stack so it can be migrated to the new context */
            setlocal = bc->setlocal;
            bc->setlocal = NULL;
            FUNC10();
        }

        /* Create a new context. This function will not
         * return until this context has been exited */
        new.prev = bc;
        /* copy some fields in the new structure if it is the same file */
        if (same_fn)
        {
            new.mem     = bc->mem;
            new.memsize = bc->memsize;
            new.mempos  = 0;
            new.memfree = FALSE;    /* don't free this, being used before this */
        }
        bc = &new;
        bc->RedirList = NULL;
        bc->setlocal = setlocal;
    }

    FUNC12(fullname, sizeof(bc->BatchFilePath) / sizeof(TCHAR), bc->BatchFilePath, NULL);
    /*  if a new batch file, load it into memory and close the file */
    if (!same_fn)
    {
        FUNC1(hFile);
        FUNC4(hFile);
    }

    bc->mempos = 0;    /* goto begin of batch file */
    bc->bEcho = bEcho; /* Preserve echo across batch calls */
    for (i = 0; i < 10; i++)
        bc->shiftlevel[i] = i;

    bc->params = FUNC2 (firstword, param);
    //
    // Allocate enough memory to hold the params and copy them over without modifications
    //
    bc->raw_params = FUNC19(param);
    if (bc->raw_params == NULL)
    {
        FUNC22();
        return 1;
    }

    /* Check if this is a "CALL :label" */
    if (*firstword == FUNC17(':'))
        FUNC20(firstword);

    /* If we are calling from inside a FOR, hide the FOR variables */
    saved_fc = fc;
    fc = NULL;

    /* If we have created a new context, don't return
     * until this batch file has completed. */
    while (bc == &new && !bExit)
    {
        Cmd = FUNC13(NULL);
        if (!Cmd)
            continue;

        /* JPP 19980807 */
        /* Echo batch file line */
        if (bEcho && !bDisableBatchEcho && Cmd->Type != C_QUIET)
        {
            if (!bIgnoreEcho)
                FUNC6(FUNC17('\n'));
            FUNC14();
            FUNC8(Cmd);
            FUNC6(FUNC17('\n'));
        }

        bc->current = Cmd;
        ret = FUNC9(Cmd);
        FUNC11(Cmd);
    }

    /* Always return the current errorlevel */
    ret = nErrorLevel;

    FUNC16 ("Batch: returns TRUE\n");

    fc = saved_fc;
    return ret;
}