
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int strlen (char const*) ;

__attribute__((used)) static int is_metadata_sym(const char* name)
{
    ULONG len = name ? strlen(name) : 0;
    return len > 3 && name[0] == '_' && name[1] != '_' && name[len-1] == '_' && name[len-2] == '_';
}
