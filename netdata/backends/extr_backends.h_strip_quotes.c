
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *strip_quotes(char *str) {
    if(*str == '"' || *str == '\'') {
        char *s;

        str++;

        s = str;
        while(*s) s++;
        if(s != str) s--;

        if(*s == '"' || *s == '\'') *s = '\0';
    }

    return str;
}
