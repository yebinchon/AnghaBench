
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPCTSTR ;


 scalar_t__ _T (char) ;

__attribute__((used)) static LPCTSTR
skip_ws ( LPCTSTR p )
{
    while (*p && *p <= _T(' '))
        p++;
    return p;
}
