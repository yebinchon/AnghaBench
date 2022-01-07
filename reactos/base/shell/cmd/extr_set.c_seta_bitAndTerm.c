
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lval ;
typedef int TCHAR ;
typedef scalar_t__* LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConErrResPuts (int ) ;
 int FALSE ;
 int STRING_INVALID_OPERAND ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcschr (int ,scalar_t__) ;
 int seta_logShiftTerm (scalar_t__**,int*) ;
 scalar_t__* skip_ws (scalar_t__*) ;

__attribute__((used)) static BOOL
seta_bitAndTerm(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    INT lval;
    if ( !seta_logShiftTerm ( &p, &lval ) )
        return FALSE;
    while ( *p && _tcschr(_T("<>"),*p) && p[0] == p[1] )
    {
        INT rval;
        TCHAR op = *p;

        p = skip_ws ( p+2 );

        if ( !seta_logShiftTerm ( &p, &rval ) )
            return FALSE;

        switch ( op )
        {
        case '<':
        {


            if (rval < 0 || rval >= (8 * sizeof(lval)))
                lval = 0;
            else
                lval <<= rval;
            break;
        }
        case '>':
            lval >>= rval;
            break;
        default:
            ConErrResPuts ( STRING_INVALID_OPERAND );
            return FALSE;
        }
    }

    *result = lval;
    *p_ = p;
    return TRUE;
}
