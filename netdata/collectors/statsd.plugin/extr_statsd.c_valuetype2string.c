
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STATSD_APP_CHART_DIM_VALUE_TYPE ;
__attribute__((used)) static const char *valuetype2string(STATSD_APP_CHART_DIM_VALUE_TYPE type) {
    switch(type) {
        case 135: return "events";
        case 134: return "last";
        case 131: return "min";
        case 133: return "max";
        case 128: return "sum";
        case 136: return "average";
        case 132: return "median";
        case 129: return "stddev";
        case 130: return "percentile";
    }

    return "unknown";
}
