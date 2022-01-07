
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;


 scalar_t__ IS_INTRESOURCE (scalar_t__) ;
 int lstrcmpW (scalar_t__,scalar_t__) ;

__attribute__((used)) static int resource_strcmp( LPCWSTR a, LPCWSTR b )
{
    if ( a == b )
        return 0;
    if (!IS_INTRESOURCE( a ) && !IS_INTRESOURCE( b ) )
        return lstrcmpW( a, b );

    if (!IS_INTRESOURCE( a ) && IS_INTRESOURCE( b ))
        return -1;
    if (!IS_INTRESOURCE( b ) && IS_INTRESOURCE( a ))
        return 1;
    return ( a < b ) ? -1 : 1;
}
