
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double LONG_DOUBLE ;


 int isgreater (double,double) ;
 int isless (double,double) ;
 double statsd_parse_float (char const*,double) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline LONG_DOUBLE statsd_parse_sampling_rate(const char *v) {
    LONG_DOUBLE sampling_rate = statsd_parse_float(v, 1.0);
    if(unlikely(isless(sampling_rate, 0.001))) sampling_rate = 0.001;
    if(unlikely(isgreater(sampling_rate, 1.0))) sampling_rate = 1.0;
    return sampling_rate;
}
