
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDWORD ;
typedef int * PCWSTR ;
typedef scalar_t__ INT ;


 scalar_t__ swscanf (int *,char*,int ,scalar_t__*) ;

__attribute__((used)) static PCWSTR
ParseNumber(PCWSTR argStr, PDWORD Number)
{
    INT value, skip = 0;

    value = swscanf(argStr, L"%lu%n", Number, &skip);
    if (!value) return ((void*)0);
    argStr += skip;
    return argStr;
}
