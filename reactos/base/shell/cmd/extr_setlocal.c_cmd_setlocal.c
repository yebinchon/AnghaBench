
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* setlocal; } ;
struct TYPE_5__ {int Environment; void* DelayedExpansion; void* EnableExtensions; struct TYPE_5__* Prev; } ;
typedef TYPE_1__ SETLOCAL ;
typedef int LPTSTR ;
typedef int INT ;


 int DuplicateEnvironment () ;
 void* FALSE ;
 void* TRUE ;
 int WARN (char*) ;
 int _T (char*) ;
 int _tcsicmp (int ,int ) ;
 void* bDelayedExpansion ;
 void* bEnableExtensions ;
 TYPE_4__* bc ;
 TYPE_1__* cmd_alloc (int) ;
 int cmd_free (TYPE_1__*) ;
 int error_invalid_parameter_format (int ) ;
 int error_out_of_memory () ;
 int freep (int *) ;
 int nErrorLevel ;
 int * splitspace (int ,int*) ;

INT cmd_setlocal(LPTSTR param)
{
    SETLOCAL *Saved;
    LPTSTR *arg;
    INT argc, i;


    if (!bc)
        return 0;

    Saved = cmd_alloc(sizeof(SETLOCAL));
    if (!Saved)
    {
        WARN("Cannot allocate memory for Saved!\n");
        error_out_of_memory();
        return 1;
    }
    Saved->Prev = bc->setlocal;
    Saved->EnableExtensions = bEnableExtensions;
    Saved->DelayedExpansion = bDelayedExpansion;
    Saved->Environment = DuplicateEnvironment();
    if (!Saved->Environment)
    {
        error_out_of_memory();
        cmd_free(Saved);
        return 1;
    }
    bc->setlocal = Saved;

    nErrorLevel = 0;

    arg = splitspace(param, &argc);
    for (i = 0; i < argc; i++)
    {
        if (!_tcsicmp(arg[i], _T("enableextensions")))

            bEnableExtensions = TRUE;
        else if (!_tcsicmp(arg[i], _T("disableextensions")))

            bEnableExtensions = FALSE;
        else if (!_tcsicmp(arg[i], _T("enabledelayedexpansion")))
            bDelayedExpansion = TRUE;
        else if (!_tcsicmp(arg[i], _T("disabledelayedexpansion")))
            bDelayedExpansion = FALSE;
        else
        {
            error_invalid_parameter_format(arg[i]);
            break;
        }
    }
    freep(arg);

    return nErrorLevel;
}
