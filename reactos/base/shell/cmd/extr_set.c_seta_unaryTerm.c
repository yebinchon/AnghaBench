
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef scalar_t__* LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConErrResPuts (int ) ;
 int FALSE ;
 int PARSE_IDENT (int ,int ,scalar_t__*) ;
 int STRING_EXPECTED_CLOSE_PAREN ;
 int STRING_EXPECTED_NUMBER_OR_VARIABLE ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ __iscsymf (scalar_t__) ;
 int _tcstol (scalar_t__*,int *,int ) ;
 scalar_t__ isdigit (scalar_t__) ;
 int seta_identval (int ) ;
 int seta_stmt (scalar_t__**,int *) ;
 scalar_t__* skip_ws (scalar_t__*) ;

__attribute__((used)) static BOOL
seta_unaryTerm(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    if ( *p == _T('(') )
    {
        INT rval;
        p = skip_ws ( p + 1 );
        if ( !seta_stmt ( &p, &rval ) )
            return FALSE;
        if ( *p++ != _T(')') )
        {
            ConErrResPuts ( STRING_EXPECTED_CLOSE_PAREN );
            return FALSE;
        }
        *result = rval;
    }
    else if ( isdigit(*p) )
    {
        *result = _tcstol ( p, (LPTSTR *)&p, 0 );
    }
    else if ( __iscsymf(*p) )
    {
        LPTSTR ident;
        INT identlen;
        PARSE_IDENT(ident,identlen,p);
        *result = seta_identval ( ident );
    }
    else
    {
        ConErrResPuts ( STRING_EXPECTED_NUMBER_OR_VARIABLE );
        return FALSE;
    }
    *p_ = skip_ws ( p );
    return TRUE;
}
