
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int error (char*,char*,char const*) ;
 scalar_t__ likely (int ) ;
 int str2ld (char const*,char**) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline LONG_DOUBLE statsd_parse_float(const char *v, LONG_DOUBLE def) {
    LONG_DOUBLE value;

    if(likely(v && *v)) {
        char *e = ((void*)0);
        value = str2ld(v, &e);
        if(unlikely(e && *e))
            error("STATSD: excess data '%s' after value '%s'", e, v);
    }
    else
        value = def;

    return value;
}
