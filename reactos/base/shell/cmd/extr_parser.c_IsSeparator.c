
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int BOOL ;


 int STANDARD_SEPS ;
 scalar_t__ _istspace (scalar_t__) ;
 scalar_t__ _tcschr (int ,scalar_t__) ;

__attribute__((used)) static BOOL IsSeparator(TCHAR Char)
{
    return _istspace(Char) || (Char && _tcschr(STANDARD_SEPS, Char));
}
