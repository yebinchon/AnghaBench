
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static inline int is_read_only(const char *s) {
    if(!s) return 0;

    size_t len = strlen(s);
    if(len < 2) return 0;
    if(len == 2) {
        if(!strcmp(s, "ro")) return 1;
        return 0;
    }
    if(!strncmp(s, "ro,", 3)) return 1;
    if(!strncmp(&s[len - 3], ",ro", 3)) return 1;
    if(strstr(s, ",ro,")) return 1;
    return 0;
}
