
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRD_ALGORITHM ;



 char const* RRD_ALGORITHM_ABSOLUTE_NAME ;

 char const* RRD_ALGORITHM_INCREMENTAL_NAME ;

 char const* RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME ;

 char const* RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME ;

const char *rrd_algorithm_name(RRD_ALGORITHM algorithm) {
    switch(algorithm) {
        case 131:
        default:
            return RRD_ALGORITHM_ABSOLUTE_NAME;

        case 130:
            return RRD_ALGORITHM_INCREMENTAL_NAME;

        case 128:
            return RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME;

        case 129:
            return RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME;
    }
}
