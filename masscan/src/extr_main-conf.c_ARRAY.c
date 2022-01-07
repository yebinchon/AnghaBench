
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parseInt (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static unsigned
ARRAY(const char *rhs)
{
    const char *p = strchr(rhs, '[');
    if (p == ((void*)0))
        return 0;
    else
        p++;
    return (unsigned)parseInt(p);
}
