
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;


 int isdigit (char const) ;
 struct symt** stabs_read_type_enum (char const**) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct symt* stabs_parse_type(const char* stab)
{
    const char* c = stab - 1;
    do
    {
        if ((c = strchr(c + 1, ':')) == ((void*)0)) return ((void*)0);
    } while (*++c == ':');







    while (*c && *c != '(' && !isdigit(*c))
        c++;




    return *stabs_read_type_enum(&c);
}
