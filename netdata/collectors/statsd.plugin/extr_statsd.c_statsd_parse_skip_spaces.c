
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *statsd_parse_skip_spaces(const char *s) {
    char c;

    for(c = *s; c && ( c == ' ' || c == '\t' || c == '\r' || c == '\n' ); c = *++s) ;

    return s;
}
