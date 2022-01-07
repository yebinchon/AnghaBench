
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PWCHAR ;



__attribute__((used)) static PWCHAR
GetFileName(PWCHAR Path)
{
    ULONG i, j;

    j = i = 0;

    while (Path[i++])
    {
        if (Path[i - 1] == L'\\')
            j = i;
    }

    return Path + j;
}
