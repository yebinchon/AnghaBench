
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _SETLOCAL {int dummy; } ;
typedef int fpname ;
struct TYPE_10__ {int* shiftlevel; TYPE_1__* current; int * raw_params; int params; scalar_t__ bEcho; scalar_t__ mempos; int * BatchFilePath; struct _SETLOCAL* setlocal; int * RedirList; void* memfree; int memsize; scalar_t__ mem; struct TYPE_10__* prev; } ;
struct TYPE_9__ {scalar_t__ Type; int Redirections; } ;
typedef int TCHAR ;
typedef TYPE_1__ PARSED_COMMAND ;
typedef scalar_t__* LPTSTR ;
typedef int * LPFOR_CONTEXT ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef void* BOOL ;
typedef TYPE_2__ BATCH_CONTEXT ;


 int AddBatchRedirection (int *) ;
 int BatchFile2Mem (scalar_t__) ;
 int BatchParams (scalar_t__*,scalar_t__*) ;
 scalar_t__ C_QUIET ;
 int ClearBatch () ;
 int CloseHandle (scalar_t__) ;
 int ConErrResPuts (int ) ;
 int ConOutChar (scalar_t__) ;
 scalar_t__ CreateFile (scalar_t__*,int ,int,int *,int ,int,int *) ;
 int EchoCommand (TYPE_1__*) ;
 int ExecuteCommand (TYPE_1__*) ;
 int ExitBatch () ;
 void* FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_SEQUENTIAL_SCAN ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FreeCommand (TYPE_1__*) ;
 int GENERIC_READ ;
 int GetFullPathName (scalar_t__*,int,int *,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 TYPE_1__* ParseCommand (int *) ;
 int PrintPrompt () ;
 int STRING_BATCH_ERROR ;
 int SetLastError (int ) ;
 int TRACE (char*,...) ;
 void* TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ _tcsicmp (int *,int *) ;
 int bDisableBatchEcho ;
 scalar_t__ bEcho ;
 int bExit ;
 int bIgnoreEcho ;
 TYPE_2__* bc ;
 int * cmd_dup (scalar_t__*) ;
 int cmd_goto (scalar_t__*) ;
 int debugstr_aw (scalar_t__*) ;
 int error_out_of_memory () ;
 int * fc ;
 int nErrorLevel ;

INT Batch(LPTSTR fullname, LPTSTR firstword, LPTSTR param, PARSED_COMMAND *Cmd)
{
    BATCH_CONTEXT new;
    LPFOR_CONTEXT saved_fc;
    INT i;
    INT ret = 0;
    BOOL same_fn = FALSE;

    HANDLE hFile = 0;
    SetLastError(0);
    if (bc && bc->mem)
    {
        TCHAR fpname[MAX_PATH];
        GetFullPathName(fullname, sizeof(fpname) / sizeof(TCHAR), fpname, ((void*)0));
        if (_tcsicmp(bc->BatchFilePath,fpname)==0)
            same_fn=TRUE;
    }
    TRACE ("Batch: (\'%s\', \'%s\', \'%s\')  same_fn = %d\n",
        debugstr_aw(fullname), debugstr_aw(firstword), debugstr_aw(param), same_fn);

    if (!same_fn)
    {
        hFile = CreateFile(fullname, GENERIC_READ, FILE_SHARE_WRITE | FILE_SHARE_READ | FILE_SHARE_DELETE, ((void*)0),
                           OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL |
                           FILE_FLAG_SEQUENTIAL_SCAN, ((void*)0));

        if (hFile == INVALID_HANDLE_VALUE)
        {
            ConErrResPuts(STRING_BATCH_ERROR);
            return 1;
        }
    }

    if (bc != ((void*)0) && Cmd == bc->current)
    {

        ClearBatch();
        AddBatchRedirection(&Cmd->Redirections);
    }
    else
    {
        struct _SETLOCAL *setlocal = ((void*)0);

        if (Cmd == ((void*)0))
        {



            ret = nErrorLevel;
        }
        else if (bc)
        {




            setlocal = bc->setlocal;
            bc->setlocal = ((void*)0);
            ExitBatch();
        }



        new.prev = bc;

        if (same_fn)
        {
            new.mem = bc->mem;
            new.memsize = bc->memsize;
            new.mempos = 0;
            new.memfree = FALSE;
        }
        bc = &new;
        bc->RedirList = ((void*)0);
        bc->setlocal = setlocal;
    }

    GetFullPathName(fullname, sizeof(bc->BatchFilePath) / sizeof(TCHAR), bc->BatchFilePath, ((void*)0));

    if (!same_fn)
    {
        BatchFile2Mem(hFile);
        CloseHandle(hFile);
    }

    bc->mempos = 0;
    bc->bEcho = bEcho;
    for (i = 0; i < 10; i++)
        bc->shiftlevel[i] = i;

    bc->params = BatchParams (firstword, param);



    bc->raw_params = cmd_dup(param);
    if (bc->raw_params == ((void*)0))
    {
        error_out_of_memory();
        return 1;
    }


    if (*firstword == _T(':'))
        cmd_goto(firstword);


    saved_fc = fc;
    fc = ((void*)0);



    while (bc == &new && !bExit)
    {
        Cmd = ParseCommand(((void*)0));
        if (!Cmd)
            continue;



        if (bEcho && !bDisableBatchEcho && Cmd->Type != C_QUIET)
        {
            if (!bIgnoreEcho)
                ConOutChar(_T('\n'));
            PrintPrompt();
            EchoCommand(Cmd);
            ConOutChar(_T('\n'));
        }

        bc->current = Cmd;
        ret = ExecuteCommand(Cmd);
        FreeCommand(Cmd);
    }


    ret = nErrorLevel;

    TRACE ("Batch: returns TRUE\n");

    fc = saved_fc;
    return ret;
}
