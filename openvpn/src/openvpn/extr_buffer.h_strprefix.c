
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static inline bool
strprefix(const char *str, const char *prefix)
{
    return 0 == strncmp(str, prefix, strlen(prefix));
}
