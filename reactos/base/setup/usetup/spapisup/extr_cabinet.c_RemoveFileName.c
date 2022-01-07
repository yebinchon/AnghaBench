
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PWCHAR ;
typedef int DWORD ;


 int* GetFileName (int*) ;

__attribute__((used)) static VOID
RemoveFileName(PWCHAR Path)
{
    PWCHAR FileName;
    DWORD i;

    i = 0;
    FileName = GetFileName(Path + i);

    if (FileName != Path + i && FileName[-1] == L'\\')
        FileName--;

    if (FileName == Path + i && FileName[0] == L'\\')
        FileName++;

    FileName[0] = 0;
}
