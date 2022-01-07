
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STATSD_METRIC_TYPE ;
const char *statsd_metric_type_string(STATSD_METRIC_TYPE type) {
    switch(type) {
        case 133: return "counter";
        case 132: return "gauge";
        case 131: return "histogram";
        case 130: return "meter";
        case 129: return "set";
        case 128: return "timer";
        default: return "unknown";
    }
}
