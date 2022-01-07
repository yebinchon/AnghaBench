
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef scalar_t__* LPTCH ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ _totlower (scalar_t__) ;

__attribute__((used)) static INT
IsKeyInString (LPTSTR lpString, TCHAR cKey, BOOL bCaseSensitive)
{
    LPTCH p = lpString;
    INT val = 0;

    while (*p)
    {
        if (bCaseSensitive)
        {
            if (*p == cKey)
                return val;
        }
        else
        {
            if (_totlower (*p) == _totlower (cKey))
                return val;
        }

        val++;
        p++;
    }

    return -1;
}
