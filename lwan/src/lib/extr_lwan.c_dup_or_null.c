
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;

__attribute__((used)) static char *dup_or_null(const char *s)
{
    return s ? strdup(s) : ((void*)0);
}
