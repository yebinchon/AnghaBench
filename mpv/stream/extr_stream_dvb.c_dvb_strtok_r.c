
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

__attribute__((used)) static char *dvb_strtok_r(char *s, const char *sep, char **p)
{
    if (!s && !(s = *p))
        return ((void*)0);


    s += strspn(s, sep);


    if (!*s)
        return *p = 0;


    *p = s + strcspn(s, sep);
    if (**p) {
        *(*p)++ = 0;
    } else {
        *p = 0;
    }
    return s;
}
