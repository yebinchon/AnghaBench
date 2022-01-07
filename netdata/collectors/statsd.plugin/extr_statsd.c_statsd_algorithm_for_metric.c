
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ STATSD_METRIC ;
typedef int RRD_ALGORITHM ;


 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_INCREMENTAL ;







__attribute__((used)) static inline RRD_ALGORITHM statsd_algorithm_for_metric(STATSD_METRIC *m) {
    switch(m->type) {
        default:
        case 132:
        case 129:
        case 128:
        case 131:
            return RRD_ALGORITHM_ABSOLUTE;

        case 130:
        case 133:
            return RRD_ALGORITHM_INCREMENTAL;
    }
}
