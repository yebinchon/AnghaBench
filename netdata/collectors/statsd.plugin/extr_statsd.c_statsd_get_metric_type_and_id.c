
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ STATSD_METRIC ;


 int STATSD_CHART_PREFIX ;
 int netdata_fix_chart_id (char*) ;
 int snprintfz (char*,size_t,char*,int ,char const*,int ) ;
 int strncpyz (char*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void statsd_get_metric_type_and_id(STATSD_METRIC *m, char *type, char *id, const char *defid, size_t len) {
    char *s;

    snprintfz(type, len, "%s_%s_%s", STATSD_CHART_PREFIX, defid, m->name);
    for(s = type; *s ;s++)
        if(unlikely(*s == '.')) break;

    if(*s == '.') {
        *s++ = '\0';
        strncpyz(id, s, len);
    }
    else {
        strncpyz(id, defid, len);
    }

    netdata_fix_chart_id(type);
    netdata_fix_chart_id(id);
}
