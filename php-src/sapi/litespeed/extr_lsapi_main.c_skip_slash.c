
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DEFAULT_SLASH ;

__attribute__((used)) static inline char* skip_slash(char *s)
{
    while (*s == DEFAULT_SLASH) {
        ++s;
    }
    return s;
}
