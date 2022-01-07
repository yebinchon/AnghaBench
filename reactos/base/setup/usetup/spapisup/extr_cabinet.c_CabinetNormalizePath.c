
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PWCHAR ;
typedef int BOOL ;


 int wcslen (int*) ;

__attribute__((used)) static BOOL
CabinetNormalizePath(PWCHAR Path,
                     ULONG Length)
{
    ULONG n;
    BOOL Ok;

    n = wcslen(Path);
    Ok = (n + 1) < Length;

    if (n != 0 && Path[n - 1] != L'\\' && Ok)
    {
        Path[n] = L'\\';
        Path[n + 1] = 0;
    }

    return Ok;
}
