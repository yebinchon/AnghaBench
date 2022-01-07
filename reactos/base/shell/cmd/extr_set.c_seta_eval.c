
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConErrResPuts (int ) ;
 int ConOutPrintf (int ,int ) ;
 int FALSE ;
 int STRING_SYNTAX_COMMAND_INCORRECT ;
 int TRUE ;
 int _T (char*) ;
 int bc ;
 int seta_stmt (int **,int *) ;

__attribute__((used)) static BOOL
seta_eval(LPCTSTR p)
{
    INT rval;
    if ( !*p )
    {
        ConErrResPuts ( STRING_SYNTAX_COMMAND_INCORRECT );
        return FALSE;
    }
    if ( !seta_stmt ( &p, &rval ) )
        return FALSE;
    if ( !bc )
        ConOutPrintf ( _T("%i"), rval );
    return TRUE;
}
