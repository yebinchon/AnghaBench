
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int compare_ext(const void *a, const void *b)
{
    const char **exta = (const char **)a;
    const char **extb = (const char **)b;

    return strcmp(*exta, *extb);
}
