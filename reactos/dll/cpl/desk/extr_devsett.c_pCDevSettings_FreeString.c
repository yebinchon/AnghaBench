
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PWCHAR ;
typedef int HLOCAL ;


 int LocalFree (int ) ;

__attribute__((used)) static __inline VOID
pCDevSettings_FreeString(PWCHAR *psz)
{
    if (*psz != ((void*)0))
    {
        LocalFree((HLOCAL)*psz);
        *psz = ((void*)0);
    }
}
