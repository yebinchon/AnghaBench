
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static inline bool streq(const char *s1, const char *s2)
{
 return strcmp(s1, s2) == 0;
}
