
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;


 struct symt** stabs_find_ref (long,long) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static struct symt** stabs_read_type_enum(const char** x)
{
    long filenr, subnr;
    const char* iter;
    char* end;

    iter = *x;
    if (*iter == '(')
    {
        ++iter;
        filenr = strtol(iter, &end, 10);
        iter = ++end;
        subnr = strtol(iter, &end, 10);
        iter = ++end;
    }
    else
    {
        filenr = 0;
        subnr = strtol(iter, &end, 10);
        iter = end;
    }
    *x = iter;
    return stabs_find_ref(filenr, subnr);
}
