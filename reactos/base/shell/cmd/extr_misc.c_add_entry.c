
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int* LPINT ;
typedef int LPCTSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WARN (char*) ;
 int _tcscpy (int *,int ) ;
 int _tcslen (int ) ;
 int * cmd_alloc (int) ;
 int cmd_free (int *) ;
 int ** cmd_realloc (int **,int) ;

BOOL add_entry (LPINT ac, LPTSTR **arg, LPCTSTR entry)
{
    LPTSTR q;
    LPTSTR *oldarg;

    q = cmd_alloc ((_tcslen(entry) + 1) * sizeof (TCHAR));
    if (!q)
    {
        WARN("Cannot allocate memory for q!\n");
        return FALSE;
    }

    _tcscpy (q, entry);
    oldarg = *arg;
    *arg = cmd_realloc (oldarg, (*ac + 2) * sizeof (LPTSTR));
    if (!*arg)
    {
        WARN("Cannot reallocate memory for arg!\n");
        *arg = oldarg;
        cmd_free (q);
        return FALSE;
    }


    (*arg)[*ac] = q;
    (*arg)[++(*ac)] = ((void*)0);

    return TRUE;
}
