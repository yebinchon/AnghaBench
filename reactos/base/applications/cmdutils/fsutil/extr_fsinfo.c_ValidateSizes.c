
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int FILESYSTEM_STATISTICS ;
typedef int DWORD ;


 int _T (char*) ;
 int _ftprintf (int ,int ,int,int) ;
 int stderr ;

inline int
ValidateSizes(ULONG Length, DWORD ProcCount, DWORD BytesRead, DWORD SpecificSize)
{

    if (Length * ProcCount > BytesRead)
    {
        _ftprintf(stderr, _T("Only performed a partial read: %lu (expected: %lu)\n"), BytesRead, Length * ProcCount);
        return 1;
    }


    if ((sizeof(FILESYSTEM_STATISTICS) + SpecificSize) * ProcCount > BytesRead)
    {
        _ftprintf(stderr, _T("Only performed a partial read: %lu (expected: %Iu)\n"), BytesRead, (sizeof(FILESYSTEM_STATISTICS) + SpecificSize));
        return 1;
    }

    return 0;
}
