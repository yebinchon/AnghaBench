
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* LPSTR ;



__attribute__((used)) static
VOID
StripQuotes(
    LPSTR in)
{
    LPSTR out = in;

    for (; *in; in++)
    {
        if (*in != '"')
            *out++ = *in;
    }

    *out = '\0';
}
