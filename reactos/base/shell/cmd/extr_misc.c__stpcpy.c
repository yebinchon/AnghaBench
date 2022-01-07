
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPTSTR ;
typedef int LPCTSTR ;


 int _tcscpy (scalar_t__,int ) ;
 scalar_t__ _tcslen (int ) ;

LPTSTR _stpcpy (LPTSTR dest, LPCTSTR src)
{
    _tcscpy (dest, src);
    return (dest + _tcslen (src));
}
