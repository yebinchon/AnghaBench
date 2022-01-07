
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef scalar_t__* LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetLocalTime (TYPE_1__*) ;
 int SetLocalTime (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ _istdigit (scalar_t__) ;
 scalar_t__ _totupper (scalar_t__) ;
 scalar_t__ cDecimalSeparator ;
 scalar_t__ cTimeSeparator ;
 scalar_t__ nTimeFormat ;

__attribute__((used)) static BOOL ParseTime (LPTSTR s)
{
    SYSTEMTIME t;
    LPTSTR p = s;

    if (!*s)
        return TRUE;

    GetLocalTime (&t);
    t.wHour = 0;
    t.wMinute = 0;
    t.wSecond = 0;
    t.wMilliseconds = 0;


    if (_istdigit(*p))
    {
        while (_istdigit(*p))
        {
            t.wHour = t.wHour * 10 + *p - _T('0');
            p++;
        }
    }
    else
        return FALSE;


    if (*p != cTimeSeparator)
        return FALSE;
    p++;


    if (_istdigit(*p))
    {
        while (_istdigit(*p))
        {
            t.wMinute = t.wMinute * 10 + *p - _T('0');
            p++;
        }
    }
    else
        return FALSE;


    if (*p != cTimeSeparator)
        return FALSE;
    p++;


    if (_istdigit(*p))
    {
        while (_istdigit(*p))
        {
            t.wSecond = t.wSecond * 10 + *p - _T('0');
            p++;
        }
    }
    else
        return FALSE;


    if (*p == cDecimalSeparator)
    {
        p++;


        if (_istdigit(*p))
        {
            while (_istdigit(*p))
            {

                p++;
            }

        }
    }


    if (nTimeFormat == 0)
    {
        if (_totupper(*s) == _T('P'))
        {
            t.wHour += 12;
        }

        if ((_totupper(*s) == _T('A')) && (t.wHour == 12))
        {
            t.wHour = 0;
        }
    }

    if (t.wHour > 23 || t.wMinute > 60 || t.wSecond > 60 || t.wMilliseconds > 999)
        return FALSE;

    SetLocalTime (&t);

    return TRUE;
}
