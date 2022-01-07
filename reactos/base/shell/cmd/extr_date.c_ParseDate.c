
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wYear; int wDay; int wMonth; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int * LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetLocalTime (TYPE_1__*) ;
 int ReadNumber (int **,int*) ;
 int ReadSeparator (int **) ;
 int SetLocalTime (TYPE_1__*) ;
 int TRUE ;
 int** awMonths ;
 int nDateFormat ;

__attribute__((used)) static BOOL
ParseDate (LPTSTR s)
{
    SYSTEMTIME d;
    unsigned char leap;
    LPTSTR p = s;

    if (!*s)
        return TRUE;

    GetLocalTime (&d);

    d.wYear = 0;
    d.wDay = 0;
    d.wMonth = 0;

    switch (nDateFormat)
    {
        case 0:
        default:
            if (!ReadNumber (&p, &d.wMonth))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wDay))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wYear))
                return FALSE;
            break;

        case 1:
            if (!ReadNumber (&p, &d.wDay))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wMonth))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wYear))
                return FALSE;
            break;

        case 2:
            if (!ReadNumber (&p, &d.wYear))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wMonth))
                return FALSE;
            if (!ReadSeparator (&p))
                return FALSE;
            if (!ReadNumber (&p, &d.wDay))
                return FALSE;
            break;
    }




    if (d.wYear <= 99)
    {
        if (d.wYear >= 80)
            d.wYear = 1900 + d.wYear;
        else
            d.wYear = 2000 + d.wYear;
    }

    leap = (!(d.wYear % 4) && (d.wYear % 100)) || !(d.wYear % 400);

    if ((d.wMonth >= 1 && d.wMonth <= 12) &&
        (d.wDay >= 1 && d.wDay <= awMonths[leap][d.wMonth]) &&
        (d.wYear >= 1980 && d.wYear <= 2099))
    {
        SetLocalTime (&d);
        return TRUE;
    }

    return FALSE;
}
