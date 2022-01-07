
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int INT ;
typedef int BOOL ;


 int ConErrResPuts (int ) ;
 int FALSE ;
 int STRING_INVALID_OPERAND ;
 int TRUE ;

__attribute__((used)) static BOOL
calc(INT* lval, TCHAR op, INT rval)
{
    switch ( op )
    {
    case '*':
        *lval *= rval;
        break;
    case '/':
        *lval /= rval;
        break;
    case '%':
        *lval %= rval;
        break;
    case '+':
        *lval += rval;
        break;
    case '-':
        *lval -= rval;
        break;
    case '&':
        *lval &= rval;
        break;
    case '^':
        *lval ^= rval;
        break;
    case '|':
        *lval |= rval;
        break;
    default:
        ConErrResPuts ( STRING_INVALID_OPERAND );
        return FALSE;
    }
    return TRUE;
}
