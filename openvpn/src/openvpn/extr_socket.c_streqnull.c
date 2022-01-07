
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int streq (char const*,char const*) ;

__attribute__((used)) static inline bool
streqnull(const char *a, const char *b)
{
    if (a == ((void*)0) && b == ((void*)0))
    {
        return 1;
    }
    else if (a == ((void*)0) || b == ((void*)0))
    {
        return 0;
    }
    else
    {
        return streq(a, b);
    }
}
