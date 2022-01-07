
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UCHAR ;



__attribute__((used)) static
UCHAR
CharToHex(WCHAR Char)
{
    if ((Char >= L'0') && (Char <= L'9'))
        return Char - L'0';

    if ((Char >= L'a') && (Char <= L'f'))
        return Char - L'a' + 10;

    if ((Char >= L'A') && (Char <= L'F'))
        return Char - L'A' + 10;

    return 0;
}
