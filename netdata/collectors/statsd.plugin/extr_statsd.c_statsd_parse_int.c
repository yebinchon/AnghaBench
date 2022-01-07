
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*,char const*) ;
 scalar_t__ likely (int ) ;
 long long str2ll (char const*,char**) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline long long statsd_parse_int(const char *v, long long def) {
    long long value;

    if(likely(v && *v)) {
        char *e = ((void*)0);
        value = str2ll(v, &e);
        if(unlikely(e && *e))
            error("STATSD: excess data '%s' after value '%s'", e, v);
    }
    else
        value = def;

    return value;
}
