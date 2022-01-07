
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef int * PCWSTR ;


 int * ParseNumber (int *,int*) ;

__attribute__((used)) static PCWSTR
ParseBaudRate(PCWSTR argStr, PDWORD BaudRate)
{
    argStr = ParseNumber(argStr, BaudRate);
    if (!argStr) return ((void*)0);





    switch (*BaudRate)
    {

        case 11: case 15: case 30: case 60:
            *BaudRate *= 10;
            break;


        case 12: case 24: case 48: case 96:
            *BaudRate *= 100;
            break;

        case 19:
            *BaudRate = 19200;
            break;
    }

    return argStr;
}
