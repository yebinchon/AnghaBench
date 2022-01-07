
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPTSTR ;


 int CMDLINE_LENGTH ;
 int SubstituteForVars (int *,int *) ;
 int SubstituteVars (int *,int *,int ) ;
 int _T (char) ;
 int _tcschr (int *,int ) ;
 int bDelayedExpansion ;
 int * cmd_dup (int *) ;

LPTSTR
DoDelayedExpansion(LPTSTR Line)
{
    TCHAR Buf1[CMDLINE_LENGTH];
    TCHAR Buf2[CMDLINE_LENGTH];


    if (!SubstituteForVars(Line, Buf1))
        return ((void*)0);

    if (!bDelayedExpansion || !_tcschr(Buf1, _T('!')))
        return cmd_dup(Buf1);




    if (!SubstituteVars(Buf1, Buf2, _T('!')))
        return ((void*)0);
    return cmd_dup(Buf2);
}
