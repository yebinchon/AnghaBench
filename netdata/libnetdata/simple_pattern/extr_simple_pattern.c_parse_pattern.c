
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_pattern {char* match; struct simple_pattern* child; void* mode; void* len; } ;
typedef void* SIMPLE_PREFIX_MODE ;


 void* SIMPLE_PATTERN_PREFIX ;
 void* SIMPLE_PATTERN_SUBSTRING ;
 void* SIMPLE_PATTERN_SUFFIX ;
 struct simple_pattern* callocz (int,int) ;
 char* strdupz (char*) ;
 void* strlen (char*) ;

__attribute__((used)) static inline struct simple_pattern *parse_pattern(char *str, SIMPLE_PREFIX_MODE default_mode) {


    SIMPLE_PREFIX_MODE mode;
    struct simple_pattern *child = ((void*)0);

    char *s = str, *c = str;


    while(*c == '*') c++;


    while(*c && *c != '*') c++;


    if(*c == '*' && c[1] != '\0') {

        child = parse_pattern(c, default_mode);
        c[1] = '\0';
    }



    size_t len = strlen(s);
    if(len >= 2 && *s == '*' && s[len - 1] == '*') {
        s[len - 1] = '\0';
        s++;
        mode = SIMPLE_PATTERN_SUBSTRING;
    }
    else if(len >= 1 && *s == '*') {
        s++;
        mode = SIMPLE_PATTERN_SUFFIX;
    }
    else if(len >= 1 && s[len - 1] == '*') {
        s[len - 1] = '\0';
        mode = SIMPLE_PATTERN_PREFIX;
    }
    else
        mode = default_mode;


    struct simple_pattern *m = callocz(1, sizeof(struct simple_pattern));
    if(*s) {
        m->match = strdupz(s);
        m->len = strlen(m->match);
        m->mode = mode;
    }
    else {
        m->mode = SIMPLE_PATTERN_SUBSTRING;
    }

    m->child = child;

    return m;
}
