
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWSTR ;
typedef int * PBYTE ;


 int EVENPARITY ;
 int MARKPARITY ;
 int NOPARITY ;
 int ODDPARITY ;
 int SPACEPARITY ;
 int towupper (int ) ;

__attribute__((used)) static PCWSTR
ParseParity(PCWSTR argStr, PBYTE Parity)
{
    switch (towupper(*argStr++))
    {
        case L'N':
            *Parity = NOPARITY;
            break;

        case L'O':
            *Parity = ODDPARITY;
            break;

        case L'E':
            *Parity = EVENPARITY;
            break;

        case L'M':
            *Parity = MARKPARITY;
            break;

        case L'S':
            *Parity = SPACEPARITY;
            break;

        default:
            return ((void*)0);
    }

    return argStr;
}
