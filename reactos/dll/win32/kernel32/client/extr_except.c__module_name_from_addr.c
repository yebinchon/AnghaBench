
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbi ;
struct TYPE_3__ {scalar_t__ AllocationBase; } ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;
typedef int HMODULE ;
typedef int DWORD ;


 int GetModuleFileNameA (int ,char*,int ) ;
 size_t MAXDWORD ;
 int VirtualQuery (void const*,TYPE_1__*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static const char*
_module_name_from_addr(const void* addr, void **module_start_addr,
                       char* psz, size_t nChars, char** module_name)
{
    MEMORY_BASIC_INFORMATION mbi;

    if ((nChars > MAXDWORD) ||
        (VirtualQuery(addr, &mbi, sizeof(mbi)) != sizeof(mbi)) ||
        !GetModuleFileNameA((HMODULE)mbi.AllocationBase, psz, (DWORD)nChars))
    {
        psz[0] = '\0';
        *module_name = psz;
        *module_start_addr = 0;
    }
    else
    {
        char* s1 = strrchr(psz, '\\'), *s2 = strrchr(psz, '/');
        if (s2 && !s1)
            s1 = s2;
        else if (s1 && s2 && s1 < s2)
            s1 = s2;

        if (!s1)
            s1 = psz;
        else
            s1++;

        *module_name = s1;
        *module_start_addr = (void *)mbi.AllocationBase;
    }
    return psz;
}
