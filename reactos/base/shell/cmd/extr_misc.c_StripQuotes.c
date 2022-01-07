
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ TCHAR ;


 scalar_t__ _T (char) ;

VOID
StripQuotes(TCHAR *in)
{
    TCHAR *out = in;
    for (; *in; in++)
    {
        if (*in != _T('"'))
            *out++ = *in;
    }
    *out = _T('\0');
}
