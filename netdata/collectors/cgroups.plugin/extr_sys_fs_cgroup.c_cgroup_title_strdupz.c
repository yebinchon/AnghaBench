
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netdata_fix_chart_name (char*) ;
 char* strdupz (char const*) ;

__attribute__((used)) static inline char *cgroup_title_strdupz(const char *s) {
    if(!s || !*s) s = "/";

    if(*s == '/' && s[1] != '\0') s++;

    char *r = strdupz(s);
    netdata_fix_chart_name(r);

    return r;
}
