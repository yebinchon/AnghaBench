
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int use_raw_address(const char* name)
{
    if (!name)
        return 0;

    if (!strcmp(name, "__ImageBase"))
        return 1;

    if (!strcmp(name, "__RUNTIME_PSEUDO_RELOC_LIST__"))
        return 1;

    return 0;
}
