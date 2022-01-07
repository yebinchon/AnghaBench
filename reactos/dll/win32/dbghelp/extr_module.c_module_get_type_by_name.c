
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum module_type { ____Placeholder_module_type } module_type ;
typedef char WCHAR ;


 int DMT_DBG ;
 int DMT_ELF ;
 int DMT_MACHO ;
 int DMT_PDB ;
 int DMT_PE ;
 int S_DotDbgW ;
 int S_DotDylibW ;
 int S_DotPdbW ;
 int S_DotSoW ;
 char* get_wine_loader_name () ;
 int memcmp (char const*,int ,int) ;
 int strcmpiW (char const*,char const*) ;
 int strlenW (char const*) ;
 int strncmpiW (char const*,int ,int) ;

enum module_type module_get_type_by_name(const WCHAR* name)
{
    int loader_len, len = strlenW(name);
    const WCHAR *loader;


    do
    {
        int i = len;

        while (i && name[i - 1] >= '0' && name[i - 1] <= '9') i--;

        if (i && name[i - 1] == '.')
            len = i - 1;
        else
            break;
    } while (len);




    if (len > 3 && !memcmp(name + len - 3, S_DotSoW, 3))



        return DMT_ELF;


    if (len > 6 && !strncmpiW(name + len - 6, S_DotDylibW, 6))
        return DMT_MACHO;

    if (len > 4 && !strncmpiW(name + len - 4, S_DotPdbW, 4))
        return DMT_PDB;

    if (len > 4 && !strncmpiW(name + len - 4, S_DotDbgW, 4))
        return DMT_DBG;


    loader = get_wine_loader_name();
    loader_len = strlenW( loader );
    if ((len == loader_len || (len > loader_len && name[len - loader_len - 1] == '/')) &&
        !strcmpiW(name + len - loader_len, loader))
    {



        return DMT_ELF;

    }
    return DMT_PE;
}
