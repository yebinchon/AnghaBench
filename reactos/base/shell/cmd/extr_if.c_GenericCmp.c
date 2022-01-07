
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int LPCTSTR ;
typedef scalar_t__ INT ;


 scalar_t__ _T (char) ;
 scalar_t__ _tcstol (int ,scalar_t__**,int ) ;

__attribute__((used)) static INT GenericCmp(INT (*StringCmp)(LPCTSTR, LPCTSTR),
                      LPCTSTR Left, LPCTSTR Right)
{
    TCHAR *end;
    INT nLeft = _tcstol(Left, &end, 0);
    if (*end == _T('\0'))
    {
        INT nRight = _tcstol(Right, &end, 0);
        if (*end == _T('\0'))
        {

            return (nLeft < nRight) ? -1 : (nLeft > nRight);
        }
    }
    return StringCmp(Left, Right);
}
