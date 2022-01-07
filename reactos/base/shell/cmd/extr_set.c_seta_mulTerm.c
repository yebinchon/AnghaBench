
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int* LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcschr (int ,int) ;
 int seta_unaryTerm (int**,int*) ;
 int* skip_ws (int*) ;

__attribute__((used)) static BOOL
seta_mulTerm(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    TCHAR op = 0;
    INT rval;
    if ( _tcschr(_T("!~-"),*p) )
    {
        op = *p;
        p = skip_ws ( p + 1 );
    }
    if ( !seta_unaryTerm ( &p, &rval ) )
        return FALSE;
    switch ( op )
    {
    case '!':
        rval = !rval;
        break;
    case '~':
        rval = ~rval;
        break;
    case '-':
        rval = -rval;
        break;
    }

    *result = rval;
    *p_ = p;
    return TRUE;
}
