
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *statsd_parse_skip_up_to(const char *s, char d1, char d2) {
    char c;

    for(c = *s; c && c != d1 && c != d2 && c != '\r' && c != '\n'; c = *++s) ;

    return s;
}
