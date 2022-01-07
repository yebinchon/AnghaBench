
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 scalar_t__ lstrcmpW (scalar_t__,scalar_t__) ;

__attribute__((used)) static BOOL
REBAR_strdifW( LPCWSTR a, LPCWSTR b )
{
    return ( (a && !b) || (b && !a) || (a && b && lstrcmpW(a, b) ) );
}
