
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRD_ALGORITHM ;


 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_ABSOLUTE_NAME ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_ALGORITHM_INCREMENTAL_NAME ;
 int RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL ;
 int RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME ;
 int RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL ;
 int RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME ;
 scalar_t__ strcmp (char const*,int ) ;

RRD_ALGORITHM rrd_algorithm_id(const char *name) {
    if(strcmp(name, RRD_ALGORITHM_INCREMENTAL_NAME) == 0)
        return RRD_ALGORITHM_INCREMENTAL;

    else if(strcmp(name, RRD_ALGORITHM_ABSOLUTE_NAME) == 0)
        return RRD_ALGORITHM_ABSOLUTE;

    else if(strcmp(name, RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME) == 0)
        return RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL;

    else if(strcmp(name, RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME) == 0)
        return RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL;

    else
        return RRD_ALGORITHM_ABSOLUTE;
}
