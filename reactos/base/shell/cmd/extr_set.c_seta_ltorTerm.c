
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _tcschr (scalar_t__*,scalar_t__) ;
 int calc (int *,scalar_t__,int ) ;
 scalar_t__* skip_ws (scalar_t__*) ;

__attribute__((used)) static BOOL
seta_ltorTerm(LPCTSTR* p_, INT* result, LPCTSTR ops, BOOL (*subTerm)(LPCTSTR*,INT*))
{
    LPCTSTR p = *p_;
    INT lval;
    if ( !subTerm ( &p, &lval ) )
        return FALSE;
    while ( *p && _tcschr(ops,*p) )
    {
        INT rval;
        TCHAR op = *p;

        p = skip_ws ( p+1 );

        if ( !subTerm ( &p, &rval ) )
            return FALSE;

        if ( !calc ( &lval, op, rval ) )
            return FALSE;
    }

    *result = lval;
    *p_ = p;
    return TRUE;
}
