
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWSTR ;
typedef int* PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int * ParseNumber (int *,scalar_t__*) ;

__attribute__((used)) static PCWSTR
ParseByteSize(PCWSTR argStr, PBYTE ByteSize)
{
    DWORD value = 0;

    argStr = ParseNumber(argStr, &value);
    if (!argStr) return ((void*)0);

    *ByteSize = (BYTE)value;
    if (*ByteSize < 5 || *ByteSize > 8)
        return ((void*)0);

    return argStr;
}
