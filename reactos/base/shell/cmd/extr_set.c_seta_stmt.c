
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPCTSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _T (char) ;
 int seta_assignment (scalar_t__**,int *) ;
 scalar_t__* skip_ws (scalar_t__*) ;

__attribute__((used)) static BOOL
seta_stmt(LPCTSTR* p_, INT* result)
{
    LPCTSTR p = *p_;
    INT rval;

    if ( !seta_assignment ( &p, &rval ) )
        return FALSE;
    while ( *p == _T(',') )
    {
        p = skip_ws ( p+1 );

        if ( !seta_assignment ( &p, &rval ) )
            return FALSE;
    }

    *result = rval;
    *p_ = p;
    return TRUE;
}
