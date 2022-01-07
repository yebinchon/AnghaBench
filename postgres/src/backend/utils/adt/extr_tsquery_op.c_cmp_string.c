
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmp_string(const void *a, const void *b)
{
 const char *sa = *((char *const *) a);
 const char *sb = *((char *const *) b);

 return strcmp(sa, sb);
}
