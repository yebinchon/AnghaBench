
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_string {size_t namelen; int name; } ;


 int memcpy (char*,int ,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static const char* terminate_string(const struct p_string* p_name)
{
    static char symname[256];

    memcpy(symname, p_name->name, p_name->namelen);
    symname[p_name->namelen] = '\0';

    return (!*symname || strcmp(symname, "__unnamed") == 0) ? ((void*)0) : symname;
}
